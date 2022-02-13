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
	public partial class editcategory : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void cat_clear_Click(object sender, EventArgs e)
        {
			cat_name.Text = loc_1.Text = loc_2.Text = "";
            fileupload.Dispose();
        
        }       

        protected void cat_add_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/images/");
            string ext = System.IO.Path.GetExtension(fileupload.FileName);
            if (ext != ".jpg" && ext != ".jpeg" && ext != ".gif" && ext != "png")
            {
                imgmsg.Text = "Please Select Only Image";
                imgmsg.Visible = true;
            }
            else
            {

                fileupload.SaveAs(path + fileupload.FileName);
                string st = "~/images/";
                string img = st + fileupload.FileName;
                string name = (string)Request.QueryString["id"];
                string sql = "update category set cat_name='" + cat_name.Text + "' , cat_img='"+img+"' , location_1='"+loc_1.Text+"' , location_2='"+loc_2.Text+"' ,  location1_price='"+loc1_price+"' , location2_price='"+loc2_price.Text+"'  where cat_name='"+name+"'";
                SqlDataAdapter da = new SqlDataAdapter(sql,DBclass.cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (!da.Equals(null))
                {
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    catmsg.Text = "Changes not saved";
                    catmsg.Visible = true;
                }
            }
        }
    }
}