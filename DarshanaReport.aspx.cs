using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class DarshanaReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Label4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime fd = Convert.ToDateTime(TextBox1.Text);
            DateTime td = Convert.ToDateTime(TextBox2.Text);
            if (fd > td)
            {
                Response.Write("<script> alert('Enter Valid Date');</script>");
            }

            if (fd < td)
            {
                SqlCommand cmd = new SqlCommand("select * from darshana where  Date between'" + TextBox1.Text + "'and'" + TextBox2.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    GridView1.Visible = true;
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Label4.Visible = true;
                    GridView1.Visible = false;
                }
                con.Close();
            }
        }
    }
}