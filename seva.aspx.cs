using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class seva : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select name from addseva", con);
                SqlDataReader rd1 = cmd.ExecuteReader();
                while (rd1.Read())
                {
                    string value = rd1["name"].ToString();

                    DropDownList2.Items.Add(new ListItem(value, value));
                }
                rd1.Close();
                con.Close();



            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            DateTime a = DateTime.Parse(TextBox2.Text);
            if (a.Date < today.Date)
            {
                Response.Write("<script> alert('Invalid Date'); </script>");
            }
            else
            {
                Session["email"] = TextBox3.Text;
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Bookseva values(@Name,@Contact,@Nakshathra,@Date,@Email,@SevaName,@Price,@NoofSeva,@Total,@status)", con);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Contact", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Nakshathra", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Date", Convert.ToDateTime(TextBox2.Text).Date);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@SevaName", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@Price", TextBox4.Text);
                cmd.Parameters.AddWithValue("@NoofSeva", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@Total", TextBox5.Text);
                cmd.Parameters.AddWithValue("@status", DBNull.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("SevaReciept.aspx");

            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from addseva where name=@name", con);
            cmd.Parameters.AddWithValue("@name", DropDownList2.Text);
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string price = dr["Price"].ToString();
                TextBox4.Text = price;
            }
            dr.Close();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int SevaPrice = Convert.ToInt32(TextBox4.Text);
            int No_Of_Price = Convert.ToInt32(DropDownList3.Text);
            TextBox5.Text = (SevaPrice*No_Of_Price).ToString();
        }
    }
}