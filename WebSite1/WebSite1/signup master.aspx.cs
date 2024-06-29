using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class signup_master : System.Web.UI.Page
{
    SqlConnection cz;
    protected void Page_Load(object sender, EventArgs e)
    {
        cz = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
    }

    protected void but_sign_Click(object sender, EventArgs e)
    {
        cz.Open();
        SqlCommand cl = new SqlCommand("insert into singup(full_name , email , password , birthday) values('" + Txt_name.Text + "', '" + Txt_email.Text + "', '" + Txt_password.Text + "',  '" + Txt_date.Text + "')", cz);
        SqlDataReader sdr = cl.ExecuteReader();
        sdr.Read();

        Session["username"] =  Txt_name.Text  ;
        Response.Redirect("booking master1.aspx");

        Txt_name.Text = null;
        Txt_email.Text = null;
        Txt_password.Text = null;
        Txt_date.Text = null;

        cz.Close();
    }
}