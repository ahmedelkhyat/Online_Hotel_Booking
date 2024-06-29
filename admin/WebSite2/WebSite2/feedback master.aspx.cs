using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback_master : System.Web.UI.Page
{
    SqlConnection ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
    }

    protected void Butto_1_Click(object sender, EventArgs e)
    {
        ds.Open();
        SqlCommand da = new SqlCommand("insert into feedback(first_name ,  last_name ,  phone ,  country ,  subject) values('" + txt_firs.Text + "', '" + txt_lastn.Text + "' ,'" + txt_phonen.Text + "', '" + Drop_coun.Text + "','" + txt_msg.Text + "' )", ds);
        da.ExecuteNonQuery();
        Response.Write("<script>alert('Your feedback has been added successfully')</script>");
        txt_firs.Text = null;
        txt_lastn.Text = null;
        txt_phonen.Text = null;
        Drop_coun.Text = null;
        txt_msg.Text = null;
        ds.Close();
    }
}