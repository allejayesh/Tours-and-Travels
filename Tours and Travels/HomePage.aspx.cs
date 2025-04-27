using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tours_and_Travels
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void MaldivesDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label3.Text + "&Amount=" + Label4.Text);
        }

        protected void EuropeDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label1.Text + "&Amount=" + Label2.Text);
        }
        protected void LadakhDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label9.Text + "&Amount=" + Label10.Text);
        }
        protected void HimachalDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label7.Text + "&Amount=" + Label8.Text);
        }
        protected void JapanDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?Place=" + Label5.Text + "&Amount=" + Label6.Text);
        }
        protected void ViewMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("Packages.aspx");
        }
    }
}