using System;
using System.Web.UI;

namespace Tours_and_Travels
{
    public partial class Payment : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string name = Request.QueryString["name"];
                string email = Request.QueryString["email"];
                string amount = Request.QueryString["amount"];

                // You can now use these values to call Razorpay or display them on the page
                // Example: LabelName.Text = name;
            }
        }
    }
}
