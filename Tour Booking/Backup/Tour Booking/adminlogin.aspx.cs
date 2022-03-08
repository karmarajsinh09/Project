using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Site
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lgmsg.Visible = false;
            lgmsg2.Visible = false;
        }

       

        protected void lgbtnClear_Click(object sender, EventArgs e)
        {
            lgemail.Text = lgpassword.Text = "";
            lgemail.Focus();
        }

        protected void lgbtnlogin_Click(object sender, EventArgs e)
        {
            Session["lgemails"] = lgemail.Text;
            Session["lgpassword"] = lgpassword.Text;
            string sql = "select admin_role from admin where admin_name='" + (string)Session["lgemails"].ToString() + "' and admin_password='" + (string)Session["lgpassword"].ToString() + "' and status=1";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["admin_logedin"] = "loged_in";
                Session["admin_role"] = dt.Rows[0]["admin_role"];
                //lgmsg.Visible = true;
                Response.Redirect("admin.aspx");
                //Button btn1 = (Button)Master.FindControl("btnregister");
                //btn1.Visible = false;
                //Button btnlogout = (Button)Master.FindControl("btnlogout");
                //btnlogout.Visible = true;




            }
            else
            {
                lgmsg2.Text = "Invalid Username or Passsword";
                lgmsg2.Visible = true;
                

            }
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}