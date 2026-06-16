using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_searchvaccine1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["c1name"] = DropDownListcity.Text;
        Session["h1name"] = DropDownList2.Text;
        Panel1.Visible = true;

        string hospital1 = Session["h1name"].ToString();

        cn.Open();
        cmd.CommandText = "select hospitalname from Hospital_Registration where hospitalname='" + hospital1 + "'";
        cmd.Connection = cn;
        lblhname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        cn.Open();
        cmd.CommandText = "select hospitaladdress from Hospital_Registration where hospitalname='" + hospital1 + "'";
        cmd.Connection = cn;
        lblhaddress.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        cn.Open();
        cmd.CommandText = "select hospitalcontactno from Hospital_Registration where hospitalname='" + hospital1 + "'";
        cmd.Connection = cn;
        lblcontno.Text = cmd.ExecuteScalar().ToString();
        cn.Close();
    }


   

   

   

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["vid"] = btn.CommandArgument;
        Response.Redirect("~/User/parentlogin1.aspx");
    }
}