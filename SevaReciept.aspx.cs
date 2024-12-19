using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class SevaReciept : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("select * from Bookseva where Email='" + Session["email"] + "'", con);
            SqlDataReader srd = command.ExecuteReader();
            while (srd.Read())
            {
                //DateTime date = Convert.ToDateTime(srd["date"]);
                //string date2 = date.ToShortDateString();
                DateTime date = Convert.ToDateTime(srd["Date"]);
                string date2 = date.ToShortDateString();
                Label6.Text = date2;
                Label3.Text = srd["Name"].ToString();
                Label4.Text = srd["Contact"].ToString();
                Label5.Text = srd["Nakshathra"].ToString();
                //Label6.Text = srd["DOB"].ToString();
                Label7.Text = srd["SevaName"].ToString();
                Label8.Text = srd["NoofSeva"].ToString();
                Label9.Text = srd["Total"].ToString();
            }
            srd.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sevapayment.aspx");
        }
    }
}