using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class adminforgot : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");

        String randomcode;
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label3.Text == (TextBox2.Text).ToString())
            {
                Label5.Visible = true;
                Session["Email ID"] = TextBox1.Text;
                Label5.Text = "verify successfully";
                Response.Redirect("AdminConfirm.aspx");
            }
            else
            {
                Response.Write("<script> alert('OTP does not match')</script>");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select count(*)from Admin where emailid='" + TextBox1.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {

                string from, pass, messagebody;
                Random rand = new Random();
                randomcode = (rand.Next(9999)).ToString();
                MailMessage message = new MailMessage();
                to = (TextBox1.Text).ToString();
                from = "nknithin2210@gmail.com";
                pass = "wxuhtdekpeciatnw";
                messagebody = "your OTP is" + randomcode;
                message.To.Add(to);
                message.From = new MailAddress(from);
                message.Body = messagebody;
                message.Subject = "Password Reset Code";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.EnableSsl = true;
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, pass);

                try
                {
                    smtp.Send(message);
                    Response.Write("<script>alert('OTP is sent to your e mail');</script>");
                    Label3.Visible = true;
                    Label3.Text = randomcode;

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Your email doesn't match";
            }
        }
    }
}