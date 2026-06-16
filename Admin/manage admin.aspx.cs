using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_manage_admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Username')</Script>");
        }
       else if (string.IsNullOrEmpty(txtpassword.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Password')</Script>");
        }
       else if (string.IsNullOrEmpty(txtresetpassword.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Retype Password')</Script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Admin values('" + txtname.Text + "','" + txtpassword.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert(' Details Submited!!')</script>");
            GridView1.DataBind();
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Admin set adminname='" + txtname.Text + "',adminpassword='" + txtpassword.Text + "' where adminname='" + txtname.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script>alert(' Details updated !!')</script>");
        GridView1.DataBind();
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Admin where adminname='" + txtname.Text + "' ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script>alert(' Details  Deleted!!')</script>");
        GridView1.DataBind();

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       txtname.Text = GridView1.SelectedRow.Cells[1].Text;
       txtpassword.Text = GridView1.SelectedRow.Cells[2].Text;

    }
}