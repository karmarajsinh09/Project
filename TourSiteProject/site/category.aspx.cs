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
    public partial class category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["logedin"] == "loged_in")
            {
                if (!IsPostBack)
                {
                    string cat_name = (string)Request.QueryString["cat_name"];
                    catbook.Visible = true;
                    string sql = "select * from category where cat_name='" + cat_name + "' ";
                    SqlDataAdapter da1 = new SqlDataAdapter(sql, DBclass.cn);
                    DataTable dt = new DataTable();
                    da1.Fill(dt);
                    DropDownList1.Items.Add((string)dt.Rows[0]["location_1"]);
                    DropDownList1.Items.Add((string)dt.Rows[0]["location_2"]);
                    placename.Text = (string)dt.Rows[0]["cat_name"];

                    place_image.ImageUrl = (string)dt.Rows[0]["cat_img"];
                    if (DropDownList1.SelectedValue == (string)dt.Rows[0]["location_1"])
                    {
                        price.Text = (string)dt.Rows[0]["location1_price"];

                    }
                    if (DropDownList1.SelectedValue == (string)dt.Rows[0]["location_2"])
                    {
                        price.Text = (string)dt.Rows[0]["location2_price"];
                    }

                }



            }
            else
            {
                catbook.Visible = false;
                msgcate.Visible = true;
            }

        }

        protected void book_Click(object sender, EventArgs e)
        {
            string cat_name = (string)Request.QueryString["cat_name"];
            string sql = "select * from category where cat_name='" + cat_name + "' and status=1 ";
            SqlDataAdapter da = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            string sql1 = "insert into cart values('"+tou_name.Text+"','"+(string)dt.Rows[0]["cat_img"]+"','"+price.Text+"','"+Session["user"]+"' , 1)";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, DBclass.cn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
        }

        protected void cancel_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cat_name = (string)Request.QueryString["cat_name"];
            string sql="select * from category where cat_name='"+cat_name+"'";
            SqlDataAdapter da1 = new SqlDataAdapter(sql, DBclass.cn);
            DataTable dt = new DataTable();
            da1.Fill(dt);
            if (DropDownList1.SelectedValue == (string)dt.Rows[0]["location_1"])
            {
                price.Text = (string)dt.Rows[0]["location1_price"];

            }
            if (DropDownList1.SelectedValue == (string)dt.Rows[0]["location_2"])
            {
                price.Text = (string)dt.Rows[0]["location2_price"];
            }
        }
    }
}