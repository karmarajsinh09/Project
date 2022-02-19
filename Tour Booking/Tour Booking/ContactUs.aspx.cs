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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["contactus_start"] = "contactus";
            if (Session["contactus_start"].ToString() == "contactus")
            {
                LinkButton linkButton = (LinkButton)Master.FindControl("Contactus");
                linkButton.Visible = false;

            }
        }

        protected void lgbtnClear_Click(object sender, EventArgs e)
        {
            unm.Text = email.Text = number.Text = msg.Text = "";
        }

        protected void lgbtnlogin_Click(object sender, EventArgs e)
        {
            string sql = "insert into contact values('" + unm.Text + "' ,'" + email.Text + "' ,'" + number.Text + "' ,'" + msg.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql,DBclass.cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(!da.Equals(null))
            {
                msg1.Text = "Your detail submited";
            }
            else
            {
                msg1.Text = "your detail not submitted";
            }
        }
    }
}