using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_master : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label.Text = Session["username"].ToString();
        }
        else
        {
            Response.Redirect("log_in master.aspx");
        }
    }

    protected void Butt_0out_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("log_in master.aspx");
    }
}