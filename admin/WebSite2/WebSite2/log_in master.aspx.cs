using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class log_in_master : System.Web.UI.Page
{
    SqlConnection gh;
    protected void Page_Load(object sender, EventArgs e)
    {
        gh = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
        if (Session["username"] != null)
        {
            Button1.Visible = false;
            Response.Redirect("booking master1.aspx");


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        gh.Open();
        SqlCommand nm = new SqlCommand(" select * from singup where email='" + TextBox11.Text + "'and password='" + TextBox1.Text + "'", gh);
        SqlDataReader sdr = nm.ExecuteReader();
        sdr.Read();
        if (sdr.HasRows == true)
        {
            Session["username"] = sdr["full_name"];
            Response.Redirect("admin master.aspx");

        }
        else
        {
            Response.Write("<script>alert('email or password is wrong')</script>");
            TextBox11.Text = null;
            TextBox1.Text = null;

        }
        gh.Close();
    }
}