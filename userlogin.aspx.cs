using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Temple
{
    public partial class userlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where email='" + TextBox1 .Text + "' and password='" + TextBox2 .Text + "'", con);
            //c.cmd.CommandText = "select * from registration where userid='" + txtuser.Text + "' and password='" + txtpassword.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //MessageBox.Show("Login successfully");
                Response.Redirect("lhomepage.aspx");


            }
            else
            {
                //MessageBox.Show("invalid userid or password");
                TextBox1 .Text = "";
                TextBox2.Text = "";

            }

        }
    }
}