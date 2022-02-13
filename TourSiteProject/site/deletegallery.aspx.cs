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
    public partial class deletegallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            string sql = "select * from gallery where gallery_image_name='" + name + "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql,DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            place_name.Text = (string)dt.Rows[0]["gallery_image_name"];
            Image1.ImageUrl = (string)dt.Rows[0]["gallery_imgpath"];
        }

        protected void gallery_clear_Click(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            string sql = "update gallery set status=0 where gallery_image_name='" + name + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (!da.Equals(null))
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                galmsg.Text = "Place not delete";
                galmsg.Visible = true;
            }
               
        }
    }
}