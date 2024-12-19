using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class donation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(token) from donation", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            i++;
            int token = i;
            Session["token"] = token;
            SqlCommand cmd1 = new SqlCommand("insert into donation values(@name, @email, @address,@phone,@amount,@token,@status)", con);
            cmd1.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd1.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@address", TextBox3.Text);
            cmd1.Parameters.AddWithValue("@phone", TextBox4.Text);
            cmd1.Parameters.AddWithValue("@amount", TextBox5.Text);
            cmd1.Parameters.AddWithValue("@token", token);
            cmd1.Parameters.AddWithValue("@status", DBNull.Value);
            cmd1.ExecuteNonQuery();
            //Response.Write("<script> alert('booked'); </script>");
            Response.Redirect("DonateToken.aspx");
            con.Close();

        }
    }
}