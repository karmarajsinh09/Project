﻿using System;
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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["logedin"] == "loged_in")
            {
                string user = (string)Session["user"];
                string sql = "select * from cart where status12='" + Session["user"] + "' and status= 1  ";
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
                    cart.Visible = false;
                    msgcart1.Visible = true;

                }
                if (!IsPostBack)
                {
                    string place_name = (string)Request.QueryString["place_name_remove"];
                    string sql1 = "update cart set status= 0 where place_name='" + place_name + "' and status12='" + Session["user"] + "' ";
                    SqlDataAdapter da1 = new SqlDataAdapter(sql1, DBclass.cn);
                    DataTable dt1 = new DataTable();
                    da1.Fill(dt1);
                    if (!da1.Equals(null))
                    {
                    }

                }
            }
            else
            {
                msgcart.Visible = true;
            }


        }


        protected void purchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchase.aspx");
            //Response.Write("PURCHASE CLICK");
        }
        public string sum()
        {
            string sql = "select SUM(price) from cart where status12='" + Session["user"] + "' and status=1 ";
            SqlCommand cmd = new SqlCommand(sql, DBclass.cn);
            DBclass.cn.Open();
            string sum = cmd.ExecuteScalar().ToString();
            DBclass.cn.Close();
            cmd.Dispose();

            return Convert.ToString(sum);

        }



    }
}