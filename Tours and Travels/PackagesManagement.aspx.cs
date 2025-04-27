using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Tours_and_Travels
{
    public partial class PackagesManagement : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["newtat"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
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


        protected void Button1_Click(object sender, EventArgs e)
        {



            if (!ImageUpload.HasFile)
            {
                lblerr.Visible = true;
                lblerr.Text = "please select Image File";
            }
            else
            {
                int length = ImageUpload.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                ImageUpload.PostedFile.InputStream.Read(pic, 0, length);

                try
                {
                    con = new SqlConnection(conn);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into PackagesM" + "(Place,Description,TravelDays,Amount,ImageData,StartDate) values(@Place,@Description,@TravelDays,@Amount,@ImageData,@StartDate)", con);

                    

                    //    cmd.Parameters.AddWithValue("@Action", "Insert");
                    cmd.Parameters.AddWithValue("Place", TextBox2.Text);
                    cmd.Parameters.AddWithValue("Description", TextBox3.Text);
                    cmd.Parameters.AddWithValue("TravelDays", SqlDbType.Int).Value = Int64.Parse(TextBox4.Text);
                    cmd.Parameters.AddWithValue("Amount", SqlDbType.Decimal).Value = Decimal.Parse(TextBox5.Text);
                    cmd.Parameters.AddWithValue("StartDate", TextBox6.Text);
                    cmd.Parameters.AddWithValue("ImageData", pic);

                  // cmd.ExecuteNonQuery();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblerr.Text = "Added  successfully.";
                    }
                    else
                    {
                        lblerr.Text = "No record was added.";
                    }
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
                finally
                {
                    con.Close();
                }

            }
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["ImageData"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
        
        protected void Update_Click1(object sender, EventArgs e)
        {
            if (ImageUpload.HasFile)
            {
                byte[] imageData = ImageUpload.FileBytes;


                con = new SqlConnection(conn);
                con.Open();
                SqlCommand command = new SqlCommand("UPDATE PackagesM SET Description=@Description,TravelDays=@TravelDays,Amount=@Amount,ImageData=@ImageData WHERE Id=@Id", con);
                   command.Parameters.AddWithValue("@Id", TextBox1.Text);
                command.Parameters.AddWithValue("@Place", TextBox2.Text);
                    command.Parameters.AddWithValue("@Description", TextBox3.Text);
                    command.Parameters.AddWithValue("@TravelDays", TextBox4.Text);
                    command.Parameters.AddWithValue("@Amount", TextBox5.Text);
                    command.Parameters.AddWithValue("@ImageData", imageData);
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        lblerr.Text = "Updated successfully.";
                    }
                    else
                    {
                        lblerr.Text = "No record was updated.";
                    }
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
            else
            {
                lblerr.Text = "Please select an image to upload.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(conn);
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete from PackagesM where Place='"+TextBox2.Text+"'", con);          
                cmd.ExecuteNonQuery();
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
            finally
            {
                con.Close();
            }
        }

        protected void getName_Click(object sender, EventArgs e)
        {
            try
            {
                con= new SqlConnection(conn);
                con.Open();
                TextBox1.Enabled = false;
                SqlCommand cmd = new SqlCommand("Select * from PackagesM where Place='"+TextBox2.Text+"'",con);
                cmd.ExecuteNonQuery();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][0].ToString();
                    // TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox3.Text = dt.Rows[0][2].ToString();
                    TextBox4.Text = dt.Rows[0][3].ToString();
                    TextBox5.Text = dt.Rows[0][4].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid PackageID');</script>");
                }
            }
            finally {
                con.Close();
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
    }

   
}

