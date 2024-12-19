using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class darshana1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label7.Visible = true;
            TextBox2.Visible = true;
            int person = Convert.ToInt32(DropDownList1.SelectedValue);
            int a = 30;
            TextBox2.Text = (person * a).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            DateTime a = DateTime.Parse(TextBox1.Text);
            if (a.Date < today.Date)
            {
                Response.Write("<script> alert('Invalid Date'); </script>");
                TextBox1.Text ="";
                TextBox1.Focus();

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(token) from darshana", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                i++;
                int token = i;
                Session["token"] = token;
                SqlCommand cmd1 = new SqlCommand("insert into darshana values(@date, @person, @amount,@token,@status)", con);
                cmd1.Parameters.AddWithValue("@date", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@person", DropDownList1.Text);
                cmd1.Parameters.AddWithValue("@amount", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@token", token);
                cmd1.Parameters.AddWithValue("@status", DBNull.Value);
                cmd1.ExecuteNonQuery();
                //Response.Write("<script> alert('booked'); </script>");
                Response.Redirect("token.aspx");
                con.Close();
            }
        }
    }
}