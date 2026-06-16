using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Parent_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(parentid) from Parent_Registration";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtid0.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(parentid) from Parent_Registration";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtid0.Text = y.ToString();
            cn.Close();
        }
        cn.Close();

    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname0.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Name')</Script>");
        }
        else if (string.IsNullOrEmpty(txtaddress0.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Address')</Script>");
        }
        else if (string.IsNullOrEmpty(txtemail0.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Email')</Script>");
        }
        else if (string.IsNullOrEmpty(txtcontactno0.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Contact No')</Script>");
        }
        else if (string.IsNullOrEmpty(txtusername0.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Username')</Script>");
        }
        else if (string.IsNullOrEmpty(txtpassword1.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Password')</Script>");
        }
        else if (string.IsNullOrEmpty(txtpassword2.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Confirm Password')</Script>");
        }
        else
        {


            cn.Open();
            cmd.CommandText = "insert into Parent_Registration values(" + txtid0.Text + ",'" + txtname0.Text + "','" + txtaddress0.Text + "','" + txtemail0.Text + "'," + txtcontactno0.Text + ",'" + txtpassword1.Text + "','" + txtusername0.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Parent Registration Submitted Successfully')</Script>");

        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {

        txtname0.Text = "";
        txtaddress0.Text = "";
        txtemail0.Text = "";
        txtcontactno0.Text = "";
        txtpassword1.Text = "";
        txtusername0.Text = "";


    }

}