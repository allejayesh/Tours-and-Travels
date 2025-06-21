using System;

namespace Tours_and_Travels
{
    public partial class HotelPayment : System.Web.UI.Page
    {
        protected string name = "User";
        protected string email = "user@example.com";
        protected string amount = "10000"; // Amount in paise (e.g., ₹100 = 10000 paise)

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null || Session["Amount"] == null)
                {
                    Response.Redirect("LoginPage.aspx");
                }

                name = Session["User"].ToString();

                if (Session["Email"] != null)
                {
                    email = Session["Email"].ToString();
                }

                amount = Session["Amount"].ToString();
            }
        }
    }
}
