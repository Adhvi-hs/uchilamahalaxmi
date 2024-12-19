using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Temple
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible =false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*)from admin where emailid='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
               // Response.Write("<script>alert('Login successfull')</script>");
                Response.Redirect("adminhomepage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid mail or password')</script>");
                TextBox1.Text ="";
                TextBox2.Text ="";
                //Label1 .Visible = true;
                //Label1.Text = "Invalid Mail or Password";
            }

        }
    }
}