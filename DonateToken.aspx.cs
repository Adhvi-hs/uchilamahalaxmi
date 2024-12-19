using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class DonateToken : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
            con.Open();
            SqlCommand command = new SqlCommand("select * from donation where token='" + Session["token"] + "'", con);
            SqlDataReader srd = command.ExecuteReader();
            while (srd.Read())
            {
                TextBox1.Text = srd["name"].ToString();
                TextBox3.Text = srd["email"].ToString();
                TextBox4.Text = srd["phone"].ToString();
                TextBox5.Text = srd["amount"].ToString();
                TextBox2.Text = srd["token"].ToString();
            }
            srd.Close();
            con.Close();

        }
    }
}