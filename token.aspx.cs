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
    public partial class token : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("select * from darshana where token='"+ Session["token"] + "'", con);
            SqlDataReader srd = command.ExecuteReader();
            while (srd.Read())
            {
                DateTime date = Convert.ToDateTime(srd["date"]);
                string date2 = date.ToShortDateString();
                TextBox1.Text = date2;
                TextBox2.Text = srd["person"].ToString();
                TextBox3.Text = srd["amount"].ToString();
                TextBox4.Text = srd["token"].ToString();
            }
            srd.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }

}