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
    public partial class Register : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                if (TextBox4.Text != "" && TextBox5.Text != "")
                {
                    if (TextBox4.Text != TextBox5.Text)
                    {
                        Response.Write("<script>alert('Password not matched');</script>");

                    }

                    else
                    { 
                        con = new SqlConnection(conn);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Member" + "(Name,Mobile,email,Password,ConfirmPassword) values(@Name,@Mobile,@Email,@Password,@ConfrimPassword)", con);



                    //    cmd.Parameters.AddWithValue("@Action", "Insert");
                    //  cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = TextBox1.Text.Trim();

                    //  cmd.Parameters.Add("@Mobile", SqlDbType.Int).Value = TextBox2.Text.Trim();
                    //  cmd.Parameters.Add("@email", SqlDbType.VarChar).Value= TextBox3.Text.Trim();
                    //  cmd.Parameters.Add("@Password", SqlDbType.NVarChar).Value = TextBox4.Text.Trim();
                    //cmd.Parameters.Add("@ConfrimPassword" ,SqlDbType.NVarChar).Value = TextBox5.Text.Trim();

                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text);

                    cmd.Parameters.AddWithValue("@Mobile", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@ConfrimPassword", TextBox5.Text);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                    }
                 
                }

                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

       
    }
}