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
    public partial class Hotel : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                using (SqlConnection con = new SqlConnection(conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("Select * from HotelM", con))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }

                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Label lblPlace = (Label)row.FindControl("lblPlace");
            Label lblDesc = (Label)row.FindControl("lblDesc");
            //Label lblDays = (Label)row.FindControl("lblDays");
            Label lblAmt = (Label)row.FindControl("lblAmt");
            Image img = (Image)row.FindControl("Image1");

            //Response.Redirect("ViewDetails.aspx?Place="+lblPlace.Text+"&Description="+lblDesc.Text+"&Days="+lblDays.Text+"&Amount="+lblAmount);
            Session["Place"] = lblPlace.Text;
            Session["Desc"] = lblDesc.Text;
            //Session["Day"] = lblDays.Text;
            Session["Amt"] = lblAmt.Text;
            Session["img"] = img.ImageUrl.ToString();
            Response.Redirect("ViewDHotel.aspx");
        }

        }


    }