﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tours_and_Travels
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                if (Session["role"]=="" || Session["role"]==null)
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton5.Visible = false;
                    LinkButton8.Visible = false;
                    //LinkButton9.Visible = false;
                    LinkButton10.Visible = false;


                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton5.Visible = false;
                    LinkButton8.Visible = false;
                   // LinkButton9.Visible = false;
                    LinkButton10.Visible = false;

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                   

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton5.Visible = true;
                    LinkButton8.Visible = true;
                   // LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                    LinkButton4.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }


        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {


            Response.Redirect("PackagesManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hotel Management.aspx");

        }

       

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkhotelbookings.aspx");
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }


        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Packages.aspx");
        }
        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; //memberlogin
            LinkButton2.Visible = true; //memberregistration

            LinkButton3.Visible = false;
            LinkButton7.Visible = false;//hellouser link button

            LinkButton6.Visible = true;
            LinkButton5.Visible = false;
            LinkButton8.Visible = false;
            //uLinkButton9.Visible = false;
            LinkButton10.Visible = false;
            Session.Clear();      
            Session.Abandon();    

            
            Response.Cookies.Clear();

            Response.Redirect("LoginPage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingDetail.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hotel.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkpackagebookings.aspx");
        }
    }
}