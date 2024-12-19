using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temple
{
    public partial class deleteseva : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-M4MGUPB ;Initial Catalog=uchila;Integrated Security=True;MultipleActiveResultSets=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label package_id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            string updatedata = "delete from addseva where  SINo = " + package_id.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            msglabel.Text = "Row data has been deleted successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();
        }
    }
}