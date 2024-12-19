using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class userconfirm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == TextBox2.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update registration set password='" + TextBox1.Text + "'where email='" + Session["Email ID"] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Label4.Text = "Password Changed Successfully";
                Response.Redirect("userlogin.aspx");

            }
            else
            {
                Response.Write("<script> alert ('Password does not Match');</script>");
            }
        }
    }
}