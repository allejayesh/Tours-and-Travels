using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Tours_and_Travels
{
    public partial class Booking : Page
    {
        string connString = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
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
                    string place = Request.QueryString["Place"];
                    string amount = Request.QueryString["Amount"];
                    string startdate = Request.QueryString["Date"];

                    if (!string.IsNullOrEmpty(place)) TextBox7.Text = place;
                    if (!string.IsNullOrEmpty(amount)) TextBox8.Text = amount;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string place = Request.QueryString["Place"];
            string amount = Request.QueryString["Amount"];
            string startdate = Request.QueryString["Date"];

            if (!string.IsNullOrEmpty(place)) TextBox7.Text = place;
            if (!string.IsNullOrEmpty(amount)) TextBox8.Text = amount;

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox9.Text = "";
        }

        protected void BtnBook_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) ||
                string.IsNullOrWhiteSpace(TextBox4.Text) ||
                string.IsNullOrWhiteSpace(TextBox5.Text) ||
                string.IsNullOrWhiteSpace(TextBox7.Text) ||
                string.IsNullOrWhiteSpace(TextBox8.Text) ||
                string.IsNullOrWhiteSpace(TextBox9.Text))
            {
                Response.Write("<script>alert('Please fill in all fields');</script>");
                return;
            }

            if (!DateTime.TryParse(TextBox5.Text, out DateTime selectedDate) || selectedDate < DateTime.Today)
            {
                Response.Write("<script>alert('Please enter a valid date that is after today.');</script>");
                return;
            }

            try
            {
                // Parse once and reuse
                decimal amount = decimal.Parse(TextBox8.Text);
                decimal numPeople = decimal.Parse(TextBox9.Text);
                decimal totalAmount = amount * numPeople;

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("BookingPackages", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@PhoneNo", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@EmailId", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Depature", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@FromDate", selectedDate);
                        cmd.Parameters.AddWithValue("@Place", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@Amount", amount);
                        cmd.Parameters.AddWithValue("@UserID", Session["User"].ToString());
                        cmd.Parameters.AddWithValue("@NumPeople", numPeople);
                        cmd.Parameters.AddWithValue("@TAmount", totalAmount);

                        cmd.ExecuteNonQuery();
                    }
                }

                // Redirect to Razorpay Payment.aspx
                string name = TextBox1.Text;
                string email = TextBox3.Text;
                int amountInPaise = (int)(totalAmount * 100);

                string redirectUrl = $"Payment.aspx?amount={amountInPaise}&name={name}&email={email}";
                Response.Redirect(redirectUrl);
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
    }
}
