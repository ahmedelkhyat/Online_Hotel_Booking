using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add_master : System.Web.UI.Page
{
    SqlConnection cy;
    protected void Page_Load(object sender, EventArgs e)
    {
        cy = new SqlConnection("Data Source=AHMED;Initial Catalog=hotel;Integrated Security=True");
    }

    protected void resert_add_Click(object sender, EventArgs e)
    {
        name_add.Text = null;
        address_add.Text = null;
        salary_add.Text = null;
        phone_add.Text = null;
    }

    protected void submit_add_Click(object sender, EventArgs e)
    {
        cy.Open();
        SqlCommand co = new SqlCommand("insert into employees (employee_name ,address ,salary ,phone) values('" + name_add.Text + "','" + address_add.Text + "','" + salary_add.Text + "','" + phone_add.Text + "')", cy);
        co.ExecuteNonQuery();
        Response.Write("<script>alert('added successful!')</script>");
        name_add.Text = null;
        address_add.Text = null;
        salary_add.Text = null;
        phone_add.Text = null;
        cy.Close();
    }
}