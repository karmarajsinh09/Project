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
	public partial class deletecategory : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            string name = Request.QueryString["name"];
            string sql1 = "select * from category where cat_name='"+name+"'";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1,DBclass.cn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            cat_name.Text =(string) dt1.Rows[0]["cat_name"];
            Image1.ImageUrl = (string)dt1.Rows[0]["cat_img"];
            loc_1.Text = (string)dt1.Rows[0]["location_1"];
            loc_2.Text = (string)dt1.Rows[0]["location_2"];
            loc1_price.Text = (string)dt1.Rows[0]["location1_price"];
            loc2_price.Text = (string)dt1.Rows[0]["location2_price"];


		}

     

        protected void cat_delete_Click(object sender, EventArgs e)
        {
            string name = (string)Request.QueryString["name"];
            string sql ="update category set status=0 where cat_name='"+name+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql,DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(!da.Equals(null))
            {
                Response.Redirect("admin.aspx");

            }
            else
            {
                delmsg.Text = "Category Not Deleted";
                delmsg.Visible = true;
            }
        }
    }
}