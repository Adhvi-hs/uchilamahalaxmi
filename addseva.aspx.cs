using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class addseva : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        string id = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!IsPostBack)
                {
                    GeneratedAutoID();
                }
            }
        }
        private void GeneratedAutoID()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(SINo) from addseva", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            TextBox1.Text = id + i.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ImageUpload.HasFile)
            {
                string filename = ImageUpload.PostedFile.FileName;
                string filepath = "images/" + ImageUpload.FileName;
                ImageUpload.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into addseva values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + filepath + "')", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Seva added sucessfully')</script>");
                string redirectScript = "setTimeout(function() { window.location.href ='adminhomepage.aspx'; }, 500);"; // Delay of 3000 milliseconds (3 seconds)
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);

            }
        }
    }
}