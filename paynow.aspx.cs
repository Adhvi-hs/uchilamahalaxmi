using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Temple
{
    public partial class paynow : System.Web.UI.Page
    {
        public string orderId;
        public string orderIds;
        public string name;
        public string product;
        public string email;
        public string contact;
        public string addressn;
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
               // Session.Add("amount", document.getElementById("amount").value);
               
            }
            srd.Close();
            con.Close();

           
            }
        }
    }