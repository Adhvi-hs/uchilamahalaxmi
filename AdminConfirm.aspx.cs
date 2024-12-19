using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class AdminConfirm : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("update Admin set password='" + TextBox1.Text + "'where emailid='" + Session["Email ID"] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Label4.Text = "Password Changed Successfully";
                Response.Redirect("adminlogin.aspx");

            }
            else
            {
                Response.Write("<script> alert ('Password does not Match');</script>");
            }
        }
    }
}