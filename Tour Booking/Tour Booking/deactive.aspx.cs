using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Site
{
    public partial class deactive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name =(string) Request.QueryString["deactive"];
            string sql="select * from admin where admin_name='"+name+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql,DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            admin_name.Text = (string)dt.Rows[0]["admin_name"];
            adminrole.Text = (string)dt.Rows[0]["admin_role"];
            password.Text = (string)dt.Rows[0]["admin_password"];
            Retypepassword.Text = (string)dt.Rows[0]["admin_password"];

        }

        protected void clear_Click(object sender, EventArgs e)
        {
            string name = (string)Request.QueryString["deactive"];
            string sql1 = "update admin set status=0 where admin_name='"+name+"'";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1,DBclass.cn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (!da1.Equals(null))
            {

                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Write("not edit");
            }


        }
    }
}