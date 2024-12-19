using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class PaymentCheckout : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True; MultipleActiveResultSets=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("select * from darshana where token='" + Session["token"] + "'", con);
            SqlDataReader srd = command.ExecuteReader();
            while (srd.Read())
            {
                //DateTime date = Convert.ToDateTime(srd["date"]);
                //string date2 = date.ToShortDateString();
                Label4.Text =srd["token"].ToString();
                //Label4.Text   = srd["token"].ToString();
                Label1.Text  = srd["amount"].ToString();
            }
            srd.Close();
            con.Close();
        }
        private bool IsValidExpiration(string expiration)
        {
            if (expiration.Length == 5 && expiration[2] == '/')
            {

                string[] parts = expiration.Split('/');
                if (int.TryParse(parts[0], out int month) && int.TryParse(parts[1], out int year))
                {
                    if (month >= 1 && month <= 12 && year >= DateTime.Now.Year % 100)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string expiration = TextBox3.Text;
            if (!IsValidExpiration(expiration))
            {
                Label5.Visible = true;
                Label5.Text = "Invalid expiration date.";
                return;
            }
            else
            {
                con.Open();
                SqlCommand command = new SqlCommand("select * from darshana where token='" + Session["token"] + "'", con);
                SqlDataReader srd = command.ExecuteReader();
                if (srd.Read())
                {
                    //DateTime date = Convert.ToDateTime(srd["date"]);
                    //string date2 = date.ToShortDateString();
                    string status = srd["status"].ToString();
                    if (status != "paid")
                    {

                        string s = "paid";
                        SqlCommand cmd = new SqlCommand("update darshana set status=@status where token='" + Session["token"] + "'", con);
                        cmd.Parameters.AddWithValue("@status", s);
                        cmd.ExecuteNonQuery();
                        //Response.Redirect("PaymentPopup.aspx");
                        Response.Write("<script> alert('Amount paid successfully...'); </script>");
                        string redirectScript = "setTimeout(function() { window.location.href = 'lhomepage.aspx'; }, 500);"; // Delay of 3000 milliseconds (3 seconds)
                        ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", redirectScript, true);
                    }
                    else
                    {
                        Response.Write("<script> alert('Amount is already paid by you..'); </script>");
                    }


                }
                srd.Close();
                con.Close();
            }
        }
    }
}