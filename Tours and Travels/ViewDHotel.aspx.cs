using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tours_and_Travels
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string UserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Place"] != null && Session["Desc"] != null  && Session["Amt"] != null && Session["img"] != null)
            {
               litPlace .Text = Session["Place"].ToString();
                litDesc.Text = Session["Desc"].ToString();
             
                litAmount.Text = Session["Amt"].ToString();
                Image1.ImageUrl = Session["img"].ToString();

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
                Response.Redirect("BookHotel.aspx?Hotel=" + litPlace.Text + "&Amount=" + litAmount.Text);
            }
        }
    }
}
