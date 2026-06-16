using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hospital_Hospital : System.Web.UI.MasterPage
{

    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["hospital"].ToString();

        cn.Open();
        cmd.CommandText = "select hospitalname from Hospital_Registration where username='" +Label1.Text+ "'";
        cmd.Connection = cn;
        Session["hname"]= cmd.ExecuteScalar().ToString();
        cn.Close();
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Button btn = sender as Button;
        Session["search2"] = txtsearch.Text;
        Response.Redirect("~/Hospital/search.aspx");

    }
}