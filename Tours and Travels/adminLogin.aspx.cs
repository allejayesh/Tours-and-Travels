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
    public partial class adminLogin : System.Web.UI.Page
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
                con = new SqlConnection(conn);
                con.Open();
                SqlCommand cmd = new SqlCommand("alogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    Session["user"] = TextBox1.Text;
                    Session["role"] = "admin";
                    Response.Redirect("Home.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.TargetSite);
            }
        }
    }
}