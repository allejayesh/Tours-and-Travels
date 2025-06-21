using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Tours_and_Travels
{
    public partial class BookHotel : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        string userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                {
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    userID = Session["User"].ToString();
                    string Hotel = Request.QueryString["Hotel"];
                    string perDayAmount = Request.QueryString["Amount"]; // per-day price

                    if (!string.IsNullOrEmpty(Hotel) && !string.IsNullOrEmpty(perDayAmount))
                    {
                        TextBox7.Text = Hotel;
                        ViewState["PerDayPrice"] = perDayAmount; // store for later use
                        TextBox8.Text = perDayAmount; // default for 1 day
                    }
                }
            }
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            if (DateTime.TryParse(TextBox5.Text, out DateTime fromDate) &&
                DateTime.TryParse(TextBox6.Text, out DateTime toDate) &&
                ViewState["PerDayPrice"] != null)
            {
                if (toDate >= fromDate)
                {
                    int days = (toDate - fromDate).Days + 1; // include end date
                    int perDayPrice = Convert.ToInt32(ViewState["PerDayPrice"]);
                    int totalAmount = days * perDayPrice;
                    TextBox8.Text = totalAmount.ToString();
                }
                else
                {
                    Response.Write("<script>alert('To Date must be after or same as From Date');</script>");
                    TextBox8.Text = "";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conn))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into BookHotel (Name, MobileNumber, Email, FromDate, ToDate, Hotel, Amount, UserID) values (@Name, @MobileNumber, @EmailId, @FromDate, @ToDate, @Hotel, @Amount, @UserID)", con);

                    cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("MobileNumber", SqlDbType.Int).Value = TextBox2.Text;
                    cmd.Parameters.AddWithValue("EmailId", TextBox3.Text);
                    cmd.Parameters.AddWithValue("FromDate", SqlDbType.Date).Value = TextBox5.Text;
                    cmd.Parameters.AddWithValue("ToDate", SqlDbType.Date).Value = TextBox6.Text;
                    cmd.Parameters.AddWithValue("Hotel", TextBox7.Text);
                    cmd.Parameters.AddWithValue("Amount", SqlDbType.Int).Value = TextBox8.Text;
                    cmd.Parameters.AddWithValue("UserID", Session["User"].ToString());

                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                // Razorpay uses amount in paise
                Session["Amount"] = Convert.ToInt32(TextBox8.Text) * 100;
                Session["Email"] = TextBox3.Text;
                Session["Name"] = TextBox1.Text;

                Response.Redirect("HotelPayment.aspx");
            }
            catch (SqlException sqlEx)
            {
                Response.Write("<script>alert('SQL Error: " + sqlEx.Message + "');</script>");
            }
            catch (FormatException formatEx)
            {
                Response.Write("<script>alert('Format Error: " + formatEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
    }
}
