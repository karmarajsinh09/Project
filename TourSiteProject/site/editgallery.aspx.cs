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
    public partial class editgallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gallery_clear_Click(object sender, EventArgs e)
        {
            place_name.Text = "";
            fileupload2.Dispose();
        }

        protected void gallery_add_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/images/");
            fileupload2.SaveAs(path + fileupload2.FileName);
            string st = "~/images/";
            string img = st + fileupload2.FileName;
            string name = (string)Request.QueryString["id"];
            string sql = "update gallery set gallery_image_name='"+place_name.Text+"' , gallery_imgpath='"+img+"' where gallery_image_name='"+name+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql,DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(!da.Equals(null))
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                galmsg.Text = "Changes not saved";
                galmsg.Visible = true;
            }
        }
    }
}