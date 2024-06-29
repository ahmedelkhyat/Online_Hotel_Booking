using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback__master : System.Web.UI.Page
{
    SqlConnection cq;
    protected void Page_Load(object sender, EventArgs e)
    {
      cq = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
       
    }


    protected void Button_D_Click(object sender, EventArgs e)
    {
        cq.Open();
        SqlCommand cm = new SqlCommand("delete from feedback where feedback_id='" + T_id.Text + "'", cq);
        cm.ExecuteNonQuery();
        Response.Write("<script>alert('Deleted successful!')</script>");
        T_id.Text = null;
        cq.Close();
    }

    protected void Button_S_Click(object sender, EventArgs e)
    {
        cq.Open();
        SqlCommand cm = new SqlCommand("select* from feedback ", cq);
        SqlDataReader sdr = cm.ExecuteReader();
        GridView3.DataSource = sdr;
        GridView3.DataBind();
        cq.Close();
    }
}