using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "";
                RadioButtonList1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Feedback values(@name,@email,@radio,@feedback)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@radio", RadioButtonList1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@feedback", TextBox3.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Thank you for your feedback..');</script>");
            string redirectScript = "setTimeout(function() { window.location.href = 'lhomepage.aspx'; }, 500);"; // Delay of 3000 milliseconds (3 seconds)
            ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
        }
    }
}