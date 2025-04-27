using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tours_and_Travels
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string UserID;
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == " " || TextBox2.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please fill in all the fields.');", true);
            }
            try
            {
                using (SqlConnection con = new SqlConnection(conn))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("mlogin", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string message = reader["Message"].ToString();
                        if (message == "Login successful")
                        {
                            Session["User"] = TextBox1.Text;
                            Session["role"] = "user";
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{message}');", true);
                        }
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid username or password.');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}