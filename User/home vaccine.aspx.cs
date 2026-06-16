using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class User_home_vaccine : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Name')</Script>");
        }

        else if (string.IsNullOrEmpty(txtdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Date')</Script>");
        }
        
        else if (string.IsNullOrEmpty(txtmobno.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Contact No')</Script>");
        }
        else if (string.IsNullOrEmpty(txtemail.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Email')</Script>");
        }
        else if (!FileUpload1.HasFile)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please Upload a presciption')</Script>");
        }
         else if (string.IsNullOrEmpty(txtcommends.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Comments')</Script>");
        }
        else
        {
          
            cn.Open();
            cmd.CommandText = "insert into prescription values('" + txtname.Text + "','"+txtdate.Text + "'," + txtmobno.Text + ",'" + txtemail.Text + "','" + DropDownList1.Text + "','" +txtcommends.Text+"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('prescription Submitted Successfully')</Script>");
        }
    }

    protected void txtmobno_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}