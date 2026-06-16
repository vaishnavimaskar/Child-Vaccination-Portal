using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

        
public partial class Admin_admin_login : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Admin Name')</Script>");
        }
       else if (string.IsNullOrEmpty(txtpassword.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Admin Password')</Script>");
        }
        else
        {

            cn.Open();
            cmd.CommandText = "select adminname from Admin where adminname='" + txtname.Text + "'and  adminpassword='" + txtpassword.Text + "'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            da.SelectCommand = cmd;
            da.Fill(dt);
            String a = txtname.Text;
            if (dt.Rows.Count > 0)
            {
                Session["admin"] = txtname.Text;
                Response.Redirect("~/Admin/Home.aspx");
                
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Invalid Record !!')</script>");
            }
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpassword.Text = "";
    }
}
