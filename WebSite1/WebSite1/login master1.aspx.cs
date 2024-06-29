using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login_master1 : System.Web.UI.Page
{
    SqlConnection vv;
    protected void Page_Load(object sender, EventArgs e)
    {
        vv = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
        if (Session["username"] != null)
        {
            Button_log.Visible = false;
            Response.Redirect("booking master1.aspx");


        }
    }

    protected void Button_log_Click(object sender, EventArgs e)
    {
        vv.Open();
        SqlCommand vs = new SqlCommand("select * from singup where email='" + Test_mail.Text + "'and password='" + Test_pass.Text + "'", vv);
        SqlDataReader sdr = vs.ExecuteReader();
        sdr.Read();
        if (sdr.HasRows == true)
        {
            Session["username"] = sdr["full_name"];
            Response.Redirect("booking master1.aspx");

        }
        else
        {
            Response.Write("<script>alert('email or password is wrong')</script>");
            Test_mail.Text = null;
            Test_pass.Text = null;

        }
        vv.Close();
    
    }
}