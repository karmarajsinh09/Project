using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class Tour : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnlogout.Visible = false;
            if ((string)Session["logedin"] == "loged_in")
            {
                btnlogout.Visible = true;
                btnregister.Visible = false;
                btnlogin.Visible = false;

            }
            else
            {
                btnlogout.Visible = false;
              
             

            }


        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
            

        }

        protected void Aboutus_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void ContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            Response.Redirect("Login.aspx");

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Remove("logedin");
            btnregister.Visible = true;
            btnlogin.Visible = true;
            btnlogout.Visible = false;
            Label lbuser = (Label)ContentPlaceHolder1.FindControl("lbuser");
            lbuser.Visible = false;
            Label user = (Label)ContentPlaceHolder1.FindControl("user");
            user.Visible = false;
            Label sitename = (Label)ContentPlaceHolder1.FindControl("sitename");
            sitename.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }
    }
}