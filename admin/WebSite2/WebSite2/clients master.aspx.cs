using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class clients_master : System.Web.UI.Page
{
    SqlConnection cg;
    protected void Page_Load(object sender, EventArgs e)
    {
        cg = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
    }

    protected void de_id_Click(object sender, EventArgs e)
    {
        cg.Open();
        SqlCommand cj = new SqlCommand("delete from booking where  booking_id='" + Te_iid.Text + "'", cg);
        cj.ExecuteNonQuery();
        Response.Write("<script>alert('Deleted successful!')</script>");
        Te_iid.Text = null;
        cg.Close();
    }

    protected void sh_id_Click(object sender, EventArgs e)
    {
        cg.Open();
        SqlCommand cj = new SqlCommand("select* from booking where  booking_id='" + Te_iid.Text + "'", cg);
        SqlDataReader sdr = cj.ExecuteReader();
        GridView1.DataSource = sdr;
        GridView1.DataBind();
        cg.Close();
    }
}