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
    public partial class BookingDetail : System.Web.UI.Page
    {
        
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            if (!this.IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("Select Name,Depature,Place,FromDate,T_Amount from BookingP where UserID ='" + Session["User"] + "'", con))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }

                    using (SqlDataAdapter sda = new SqlDataAdapter("Select Name,Hotel,fromdate,Amount from BookHotel where UserID ='" + Session["User"] + "'", con))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                }
            }
        }
    }
}