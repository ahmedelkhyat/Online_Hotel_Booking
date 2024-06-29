using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class booking_master1 : System.Web.UI.Page
{
    SqlConnection cb;
    protected void Page_Load(object sender, EventArgs e)
    {
        cb = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");

        if (Session["username"] != null)
        {
            Label2.Text = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("login master1.aspx");
        }
    }

    protected void But_submit_Click(object sender, EventArgs e)
    {
        cb.Open();
        SqlCommand cx = new SqlCommand("insert into booking (frist_name,phone,your_e_mail,arrival_date,departure_date,room_type) values('" + Tex_fname.Text + "', '" + Tex_num.Text + "', '" + Tex_mal.Text + "', '" + Tex_datrr.Text + "', '" + Tex_datda.Text + "','" + DropDownList1.Text + "')", cb);
        cx.ExecuteNonQuery();
        Response.Write("<script>alert('added successful!')</script>");
        Tex_fname.Text = null;
        Tex_num.Text = null;
        Tex_mal.Text = null;
        Tex_datrr.Text = null;
        Tex_datda.Text = null;
        cb.Close();
    }

    protected void But_reset_Click(object sender, EventArgs e)
    {
        Tex_fname.Text = null;
        Tex_num.Text = null;
        Tex_mal.Text = null;
        Tex_datrr.Text = null;
        Tex_datda.Text = null;
    }

    protected void But11_vr_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("login master1.aspx");
    }
}