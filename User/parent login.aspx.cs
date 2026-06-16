using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class User_parent_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtusername.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Username')</Script>");
        }
       else if (string.IsNullOrEmpty(txtpassword.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Password')</Script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "select Username,parentpassword from Parent_Registration where Username='" + txtusername.Text + "' and parentpassword='" + txtpassword.Text + "'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            String a = txtusername.Text;
            if (dt.Rows.Count > 0)
            {
                Session["parent"] = txtusername.Text;
                Response.Redirect("~/parent/Home.aspx");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Invalid Record first Register Me!!')</script>");
            }
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }

  
}