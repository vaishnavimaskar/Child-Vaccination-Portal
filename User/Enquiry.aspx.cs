using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Enquiry : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Name')</Script>");
        }
        else if (string.IsNullOrEmpty(txtdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Date')</Script>");
        }

       else if (string.IsNullOrEmpty(txtcontactno.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Contact No')</Script>");
        }
       else if (string.IsNullOrEmpty(txtemail.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Email')</Script>");
        }
        else if (string.IsNullOrEmpty(txtsubject.Text))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Subject')</Script>");
            }
        else if (string.IsNullOrEmpty(txtmessage.Text))
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Message')</Script>");
            }

            else
            {
                cn.Open();
                cmd.CommandText = "insert into Enquiry values('" + txtname.Text + "','" + txtdate.Text + "'," + txtcontactno.Text + ",'" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmessage.Text + "')";
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
                cn.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Enquiry Submitted Successfully')</Script>");

            }
        }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtdate.Text = "";
        txtcontactno.Text = "";
        txtemail.Text = "";
        txtsubject.Text = "";
        txtmessage.Text = "";
    }
}