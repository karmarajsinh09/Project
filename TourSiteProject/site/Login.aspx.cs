using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

namespace Site
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login_start"] = "log_in";
            if (Session["login_start"].ToString() == "log_in")
            {
                Button button = (Button)Master.FindControl("btnlogin");
                button.Visible = false;
                Button button1 = (Button)Master.FindControl("admin_login");
                button1.Visible = false;
            
                lgmsg.Visible = false;
                lgmsg2.Visible = false;

            }



        }

        protected void reglink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void lgbtnClear_Click(object sender, EventArgs e)
        {
            lgemail.Text = lgpassword.Text ="" ;
            lgemail.Focus();
        }

        protected void lgbtnlogin_Click(object sender, EventArgs e)
        {
            Session["lgemails"] = lgemail.Text;
            Session["lgpassword"] = lgpassword.Text;
            string sql = "select rgusername from reg_user where rgemail='"+Session["lgemails"].ToString()+"' and rgpassword='"+Session["lgpassword"].ToString()+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Session["logedin"] = "loged_in";
                Session["user"] = dt.Rows[0]["rgusername"];
                lgmsg.Visible = true;
                Button btn1 = (Button)Master.FindControl("btnregister");
                btn1.Visible = false;
                Button btnlogout = (Button)Master.FindControl("btnlogout");
                btnlogout.Visible = true;
                
            }
            else
            {
                lgmsg2.Visible = true;
                Button btn1 = (Button)Master.FindControl("btnregister");
                btn1.Visible = true;

            }

        }
    }
}