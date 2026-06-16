using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Hospital_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "select count(hospitalid) from Hospital_Registration";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(hospitalid) from Hospital_Registration";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtid.Text = y.ToString();
            cn.Close();
        }
        cn.Close();

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Name')</Script>");
        }

       else if (string.IsNullOrEmpty(txtaddress.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Address')</Script>");
        }
       else if (string.IsNullOrEmpty(txtemail.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Email')</Script>");
        }
       else if (string.IsNullOrEmpty(txtcontactno.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Contact No')</Script>");
        }
       else if (string.IsNullOrEmpty(txtusername.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Username')</Script>");
        }
       else if (string.IsNullOrEmpty(txtpassword.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Password')</Script>");
        }
       else if (string.IsNullOrEmpty(txtconfirmpassword.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Confirm Password')</Script>");
        }

       else if (string.IsNullOrEmpty(Image1.ImageUrl))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Image')</Script>");
        }
        else
        {
            string status = "pending";
            cn.Open();
            cmd.CommandText = "insert into Hospital_Registration values(" + txtid.Text + ",'" + txtname.Text + "','" + DropDownList1.Text + "','" + txtaddress.Text + "','" + txtemail.Text + "'," + txtcontactno.Text + ",'" + Image1.ImageUrl + "','" + txtpassword.Text + "','" + status + "','" + txtusername.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Hospital Registration Submitted Successfully')</Script>");
        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    { 
        txtname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtcontactno.Text = "";
        Image1.ImageUrl = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtconfirmpassword.Text="";
    }

    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Images\\" + FileUpload1.FileName));
            Image1.ImageUrl = "~\\Images\\" + FileUpload1.FileName;
        }
    }
}