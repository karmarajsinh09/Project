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
    public partial class gallery : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string place_name = (string)Request.QueryString["galname"];
            if((string)Session["logedin"] =="loged_in")
            {
                string sql = "select * from gallery where gallery_image_name='"+place_name+"' ";
                SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(!IsPostBack)
                {
                    placename.Text = (string)dt.Rows[0]["gallery_image_name"];
                    place_image.ImageUrl = (string)dt.Rows[0]["gallery_imgpath"];
                    price.Text = (string)dt.Rows[0]["price"];
                }

            }
            else
            {
                msg1.Text = "You are not login";
                home.Visible = true;
                galbook.Visible = false;
            }
        }

    

        

       

        protected void book_Click(object sender, EventArgs e)
        {
            string place_name = (string)Request.QueryString["galname"];
            string sql = "select * from gallery where gallery_image_name='" + place_name + "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
           
            string sql1 = "insert into cart values('"+placename.Text+"','"+dt.Rows[0]["gallery_imgpath"]+"' , '"+dt.Rows[0]["price"]+"' , '"+Session["user"]+"' , 1)";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, DBclass.cn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            Response.Redirect("cart.aspx");

        }

        protected void cancel_Click(object sender, EventArgs e)
        {

        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}