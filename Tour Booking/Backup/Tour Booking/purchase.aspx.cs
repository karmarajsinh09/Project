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
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { //do something 
            }

            string sql = "select * from cart where status12='" + Session["user"] + "' and status=1 ";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count >= 1)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

            }
            else
            {
                Response.Write("Your cart is empty");
            }

        }
        public string sum()
        {
            string sql = "select SUM(price) from cart where status12='" + Session["user"] + "' and status=1 ";
            SqlCommand cmd = new SqlCommand(sql, DBclass.cn);
            DBclass.cn.Open();
            string sum = cmd.ExecuteScalar().ToString();
            DBclass.cn.Close();
            cmd.Dispose();
            string sql1 = "update cart set status=2 where status12='" + Session["user"] + "' and status=1";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, DBclass.cn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (!da1.Equals(null))
            {
            }
            return Convert.ToString(sum);
        }
    }
}