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
    public partial class Packages : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
        string UserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                UserID = Session["User"].ToString();

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
            if (!this.IsPostBack)
            {

                using (SqlConnection con = new SqlConnection(conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("Select * from PackagesM", con))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }

                }
            }
        }
     /*   protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["ImageData"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
        */
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Label lblPlace = (Label)row.FindControl("lblPlace");
            Label lblDesc = (Label)row.FindControl("lblDesc");
            Label lblDays = (Label)row.FindControl("lblDays");
            Label lblAmt = (Label)row.FindControl("lblAmt");
            Image img = (Image)row.FindControl("Image1");

            Label lbldate = (Label)row.FindControl("lblDate");
            //Response.Redirect("ViewDetails.aspx?Place="+lblPlace.Text+"&Description="+lblDesc.Text+"&Days="+lblDays.Text+"&Amount="+lblAmount);
            Session["Place"] = lblPlace.Text;
            Session["Desc"] = lblDesc.Text;  
            Session["Day"] = lblDays.Text;
            Session["Amt"] = lblAmt.Text;
            Session["img"] = img.ImageUrl.ToString();
            if (lbldate != null && DateTime.TryParse(lbldate.Text, out DateTime parsedDate))
            {
                Session["date"] = parsedDate.ToString("dd-MM-yyyy");
            }
            else
            {
                Session["date"] = "";
            }
            Response.Redirect("ViewDetails.aspx");

            /*GridView gridView = (GridView)sender;
             int selectedIndex = gridView.SelectedIndex;

             // Retrieve data and image URL based on the selected index
             string Place = gridView.Rows[selectedIndex].Cells[1].Text;
             // Assuming the Data column is at index 0 
             string Descrip = gridView.Rows[selectedIndex].Cells[2].Text;
             string Days = gridView.Rows[selectedIndex].Cells[3].Text;
           string Amount = gridView.Rows[selectedIndex].Cells[4].Text;
             Image selectedImage = (Image)gridView.Rows[selectedIndex].FindControl("Image1");
             string selectedImageUrl = selectedImage.ImageUrl;

             // Store the data and image URL in session variables or pass them as query parameters to the next page
            Session["Place"] = Place;
             Session["Descrip"] = Descrip;
             Session["Days"] = Days;
             Session["Amount"] = Amount;
             Session["SelectedImageUrl"] = selectedImageUrl;

             // Redirect to the next page
             // string queryString = $"Place={HttpUtility.UrlEncode(Place)}&Descrip={HttpUtility.UrlEncode(Descrip)}&Days={HttpUtility.UrlEncode(Days)}&Amount={HttpUtility.UrlEncode(Amount)}&SelectedImageUrl={HttpUtility.UrlEncode(selectedImageUrl)}";
             Response.Redirect("ViewDetails.aspx");
     // Redirect to the next page with the query string
    // Response.Redirect($"ViewDetails.aspx?Place="+Place+"&Descrip"+Descrip+"&Days"+Days+"&Amount"+Amount+"&selectedImageUrl"+ selectedImageUrl);*/
        }
    }
}