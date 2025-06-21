using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tours_and_Travels
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        string UserID;
        string Startdate;
        protected void Page_Load(object sender, EventArgs e)
        {
            string startdate;
            /* string Place = Request.QueryString["Place"];
             string Description = Request.QueryString["Descrip"];
             string Days = Request.QueryString["Days"];
             string Amount = Request.QueryString["Amount"]; 
             string selectedImageUrl = Request.QueryString["SelectedImageUrl"];

             // Display the retrieved data and image on the page
             SelectedImage.ImageUrl = selectedImageUrl;
            lblPlace.Text = Place;
             lblDescrip.Text = Description;
             lblDay.Text = Days;

             lblAmount.Text = Amount;*/
            //UserID = Session["User"].ToString();
            if (Session["Place"] != null && Session["Desc"] != null && Session["Day"] != null && Session["Amt"] != null && Session["img"] != null)
            {
                litPlace.Text = Session["Place"].ToString();
                litDesc.Text = Session["Desc"].ToString();
                litDays.Text = Session["Day"].ToString();
                litAmount.Text = Session["Amt"].ToString();
                Image1.ImageUrl = Session["img"].ToString();
                Startdate = Session["Date"].ToString();
            }
            if (Session["User"] != null)
            {
                UserID = Session["User"].ToString();

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("Booking.aspx?place=" + litPlace.Text + "&Amount=" +litAmount.Text+" &Date=" + Startdate);

            }
        }
    }
}