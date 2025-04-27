using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Tours_and_Travels
{
    public partial class BookHotel : System.Web.UI.Page
    {
        
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
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
                    string amount = Request.QueryString["Amount"];
                    if (!string.IsNullOrEmpty(Hotel) && !string.IsNullOrEmpty(amount))
                    {
                        TextBox7.Text = Hotel;
                        TextBox8.Text = amount;
                    }
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

                    SqlCommand cmd = new SqlCommand("Insert into BookHotel" + "(Name,MobileNumber,Email,FromDate,ToDate,Hotel,Amount,UserID) values (@Name,@MobileNumber,@EmailId,@FromDate,@ToDate,@Hotel,@Amount,@UserID)", con);
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
                Response.Write("<script>alert('Booking successful!');</script>");
                Response.Redirect("BookingDetail.aspx");
            }
            catch (SqlException sqlEx)
            {
                // Log SQL-specific exceptions
                Response.Write("<script>alert('SQL Error: " + sqlEx.Message + "');</script>");
            }
            catch (FormatException formatEx)
            {
                // Log format-specific exceptions
                Response.Write("<script>alert('Format Error: " + formatEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                // Log general exceptions
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox8.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }
}