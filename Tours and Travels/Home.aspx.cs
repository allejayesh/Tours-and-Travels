using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tours_and_Travels
{
    public partial class Home : System.Web.UI.Page
    {
        string UserID;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["User"] != null )
            {
              UserID  = Session["User"].ToString();
             
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void MaldivesDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label3.Text + "&Amount=" + Label4.Text);
            Session["User"] = UserID;
        }

        protected void EuropeDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label1.Text + "&Amount=" + Label2.Text);
            Session["User"] = UserID;
        }
        protected void LadakhDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label9.Text + "&Amount=" + Label10.Text);
            Session["User"] = UserID;
        }
        protected void HimachalDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label7.Text + "&Amount=" + Label8.Text);
            Session["User"] = UserID;
        }
        protected void JapanDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label5.Text + "&Amount=" + Label6.Text);
            Session["User"] = UserID;
        }
        protected void ViewMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Packages.aspx");
            Session["User"] = UserID;
        }
    }
}