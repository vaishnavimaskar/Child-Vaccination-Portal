using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Parent_vaccinedetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["v1id"] = btn.CommandArgument;
     
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["vid"] = btn.CommandArgument;
        Response.Redirect("~/Parent/Book Appointment.aspx");
    }
}