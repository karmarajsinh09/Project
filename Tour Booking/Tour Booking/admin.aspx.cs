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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admins1.Visible = false;
            category1.Visible = false;
            gallery1.Visible = false;
            contactus.Visible = false;
            
            if((string)Session["admin_role"]!="Super Admin")
            {
                admin1.Visible = false;
            }
            string sql1 = "select * from admin where status=1 ";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, DBclass.cn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            Repeater1.DataSource = dt1;
            Repeater1.DataBind();
            string sql="select * from category where status=1 ";
            SqlDataAdapter da2 = new SqlDataAdapter(sql,DBclass.cn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            Repeater2.DataSource = dt2;
            Repeater2.DataBind();
            string sql3 = "select * from gallery where status=1";
            SqlDataAdapter da3 = new SqlDataAdapter(sql3,DBclass.cn);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            Repeater3.DataSource = dt3;
            Repeater3.DataBind();
            string sql4 = "select * from contact";
            SqlDataAdapter da4 = new SqlDataAdapter(sql4, DBclass.cn);
            DataTable dt4 = new DataTable();
            da4.Fill(dt4);
            Repeater4.DataSource = dt4;
            Repeater4.DataBind();


        }

        protected void adminslink_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            
        }

        protected void categorylink_Click(object sender, EventArgs e)
        {
            category1.Visible = true;
        }

        protected void gallerylink_Click(object sender, EventArgs e)
        {
            gallery1.Visible = true;
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            admin_name.Text = password.Text = Retypepassword.Text = "";
            admin_role.SelectedValue = "Select Admin Role";
        }

        protected void add_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            string sql = "insert into admin values('"+admin_name.Text+"','"+admin_role.Text+"','"+password.Text+"' , 1)";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(!da.Equals(null))
            {
                Label1.Text = "Admin added";
                string sql1 = "select * from admin where status=1 ";
                SqlDataAdapter da1 = new SqlDataAdapter(sql1, DBclass.cn);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                Repeater1.DataSource = dt1;
                Repeater1.DataBind();
            }
            else
            {
                Label1.Text = "admin not added";
            }
            
        }

        protected void logoutlink_Click(object sender, EventArgs e)
        {
            Session.Remove("admin_logedin");
            Response.Redirect("Default.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
            string name = (string)Request.QueryString["id"];
            
            //string sql2 = "update admin set status=0  where admin_name='"+name+"'  ";
            //SqlDataAdapter da2 = new SqlDataAdapter(sql2, DBclass.cn);
            //DataTable dt2 = new DataTable();
            //da2.Fill(dt2);
            Response.Write(name);
            Label1.Text = name;
            Label1.Visible = true;
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            string name = (string)Request.QueryString["id"];
            admins1.Visible = true;
            Label1.Text = name;
            Label1.Visible = true;
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void cat_clear_Click(object sender, EventArgs e)
        {
            cat_name.Text = loc_1.Text = loc_2.Text = "";
                fileupload.Dispose();
        }

        protected void cat_add_Click(object sender, EventArgs e)
        {
            category1.Visible = true;

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
                string sql2 = "insert into category values('" + cat_name.Text + "' , '" + img + "' , '" + loc_1.Text + "' , '" + loc_2.Text + "' , 1,'" + loc1_price.Text+"' , '"+loc2_price.Text+"' )";
                SqlDataAdapter da2 = new SqlDataAdapter(sql2, DBclass.cn);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                if (!da2.Equals(null))
                {
                    catmsg.Text = "Category added";
                    catmsg.Visible = true;
                }
                else
                {
                    catmsg.Text = "Some Error occured";
                }
            }
        }

        protected void gallery_add_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/images/");
            fileupload2.SaveAs(path + fileupload2.FileName);
            string st = "~/images/";
            string img = st + fileupload2.FileName;
            string sql = "insert into gallery values('" + place_name.Text + "','" + img + "',1,'"+price.Text+"')";
            SqlDataAdapter da2 = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (!da2.Equals(null))
            {
                galmsg.Text = "Place Added";
                galmsg.Visible = true;
            }
            else
            {
                galmsg.Text = "Place Not added";
                galmsg.Visible = true;
            }
            
        }

        protected void gallery_clear_Click(object sender, EventArgs e)
        {
            place_name.Text = "";
            fileupload2.Dispose();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            contactus.Visible = true;
        }
    }
}