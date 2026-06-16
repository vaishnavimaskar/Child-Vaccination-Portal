using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hospital_vaccine : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(vaccineid) from Vaccine1";
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
            cmd.CommandText = "select max(vaccineid) from Vaccine1";
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
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Vaccine Name')</Script>");
        }
       else if (string.IsNullOrEmpty(txthospname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Hospital Name')</Script>");
        }
       else if (string.IsNullOrEmpty(txtcompname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Vaccine Company Name')</Script>");
        }
       else if (string.IsNullOrEmpty(txtmfgdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the vaccine mfg date')</Script>");
        }
       else if (string.IsNullOrEmpty(txtexdate.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the vaccine expiry date')</Script>");
        }
       else if (string.IsNullOrEmpty(txtprice.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the vaccine price')</Script>");
        }
       else if (string.IsNullOrEmpty(txtweek.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the vaccine week')</Script>");
        }
        
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Vaccine1 values(" + txtid.Text + ",'" + txtname.Text + "','" + DropDownList1.Text + "','" + txthospname.Text + "','" + txtcompname.Text + "','" + txtmfgdate.Text + "','" + txtexdate.Text + "','" + txtweek.Text + "','" + txtprice.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Vaccine Details Submited Successfully!!')</script>");
            GridView1.DataBind();
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txthospname.Text = "";
        txtcompname.Text = "";
        txtmfgdate.Text = "";
        txtexdate.Text = "";
        txtweek.Text = "";
        txtprice.Text = "";
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        txtid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtname.Text = GridView1.SelectedRow.Cells[2].Text;
        DropDownList1.Text= GridView1.SelectedRow.Cells[3].Text;
        txthospname.Text = GridView1.SelectedRow.Cells[4].Text;
        txtcompname.Text = GridView1.SelectedRow.Cells[5].Text;
        txtmfgdate.Text = GridView1.SelectedRow.Cells[6].Text;
        txtexdate.Text = GridView1.SelectedRow.Cells[7].Text;
        txtweek.Text = GridView1.SelectedRow.Cells[8].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[9].Text;
        
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}