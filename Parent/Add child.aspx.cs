using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Parent_Add_child : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(childid) from Child_Registration ";
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
            cmd.CommandText = "select max(childid) from Child_Registration";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtid.Text = y.ToString();
            cn.Close();
        }
        cn.Close();

        string username = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentname from Parent_Registration where username='" + username + "'";
        cmd.Connection = cn;
        txtparentname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

        string parentaddress = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentaddress from Parent_Registration where username='" + username + "'";
        cmd.Connection = cn;
        txtaddress.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Child Name')</Script>");
        }
       else if (string.IsNullOrEmpty(txtaddress.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Address')</Script>");
        }
       else if (string.IsNullOrEmpty(txtparentname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Parent Name')</Script>");
        }
       else if (string.IsNullOrEmpty(txtbirthdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Birth Date')</Script>");
        }
       else if (string.IsNullOrEmpty(txtage.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Age')</Script>");
        }
       else if (string.IsNullOrEmpty(txtheight.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Height')</Script>");
        }
       else if (string.IsNullOrEmpty(txtweight.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Weigth')</Script>");
        }
       else if (string.IsNullOrEmpty(txthistory.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Medical History ')</Script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Child_Registration values(" + txtid.Text + ",'" + txtname.Text + "','" + txtaddress.Text + "','" + txtparentname.Text + "','" + txtbirthdate.Text + "','" + txtage.Text + "','" + txtweight.Text + "','" + txtheight.Text + "','" + txthistory.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Child Registration Details Submited!!')</script>");
            GridView1.DataBind();
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
       
        txtname.Text = "";
        txtbirthdate.Text = "";
        txtage.Text = "";
        txtheight.Text = "";
        txtweight.Text = "";
        txthistory.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        txtaddress.Text = GridView1.SelectedRow.Cells[3].Text;
        txtparentname.Text = GridView1.SelectedRow.Cells[4].Text;
        txtbirthdate.Text = GridView1.SelectedRow.Cells[5].Text;
        txtage.Text = GridView1.SelectedRow.Cells[6].Text;
        txtheight.Text = GridView1.SelectedRow.Cells[7].Text;
        txtweight.Text = GridView1.SelectedRow.Cells[8].Text;
        txthistory.Text = GridView1.SelectedRow.Cells[9].Text;
    }

}