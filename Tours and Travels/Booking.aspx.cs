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
                    if (!string.IsNullOrEmpty(place) && !string.IsNullOrEmpty(amount))
                    {
                        TextBox7.Text = place;
                        TextBox8.Text = amount;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            //TextBox10.Text = ""; // Uncomment if you want to reset total amount
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

            try
            {
                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("BookingPackages", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        // Adding parameters
                        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@PhoneNo", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@EmailId", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Depature", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@FromDate", DateTime.Parse(TextBox5.Text));
                        cmd.Parameters.AddWithValue("@Place", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@Amount", decimal.Parse(TextBox8.Text));
                        cmd.Parameters.AddWithValue("@UserID", Session["User"].ToString());
                        cmd.Parameters.AddWithValue("@NumPeople", decimal.Parse(TextBox9.Text)); // Ensure this is decimal

                        // Calculate total amount
                        decimal amount = decimal.Parse(TextBox8.Text);
                        decimal numPeople = decimal.Parse(TextBox9.Text); // Ensure this is decimal
                        decimal totalAmount = amount * numPeople;
                        cmd.Parameters.AddWithValue("@TAmount", totalAmount);

                        // Execute the command
                        cmd.ExecuteNonQuery();
                    }
                }

                // Optionally, show a success message or redirect
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
    }
}
