using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class employees_master : System.Web.UI.Page
{
    SqlConnection ce;
    protected void Page_Load(object sender, EventArgs e)
    {
        ce = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
    }

    protected void D_d_Click(object sender, EventArgs e)
    {
        ce.Open();
        SqlCommand ck = new SqlCommand("delete from employees where employee_id='" + Te_id.Text + "'", ce);
        ck.ExecuteNonQuery();
        Response.Write("<script>alert('Deleted successful!')</script>");
        Te_id.Text = null;
        ce.Close();
    }

    protected void S_s_Click(object sender, EventArgs e)
    {
        ce.Open();
        SqlCommand ck = new SqlCommand("select* from employees where employee_id='" + Te_id.Text + "'", ce);
        SqlDataReader sdr = ck.ExecuteReader();
        GridView2.DataSource = sdr;
        GridView2.DataBind();
        ce.Close();
    }
}