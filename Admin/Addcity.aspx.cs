using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Addcity : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        {
            cn.Open();
            cmd.CommandText = "select count(cityid) from Addcity";
            cmd.Connection = cn;
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n == 0)
            {
                n++;
                txtcityid.Text = n.ToString();
                cn.Close();
            }
            else
            {
                cn.Close();
                cn.Open();
                cmd.CommandText = "select max(cityid) from Addcity";
                cmd.Connection = cn;
                int y = Convert.ToInt32(cmd.ExecuteScalar());
                y++;
                txtcityid.Text = y.ToString();
                cn.Close();
            }
            cn.Close();


        }
    }

    protected void btnsave_Click(object sender, EventArgs e)

    {
        if (string.IsNullOrEmpty(txtcityname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the City Name')</Script>");
        }
        else
        {
            cn.Open();
            cmd.CommandText = "insert into Addcity  values(" + txtcityid.Text + ",'" + txtcityname.Text + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('City Details Submited!!')</script>");
            GridView1.DataBind();
        }
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Addcity set cityid='" + txtcityid.Text + "',cityname='" + txtcityname.Text + "' where cityid=" + txtcityid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<script>alert('City Details updated !!')</script>");
        GridView1.DataBind();

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Addcity where cityid=" + txtcityid.Text + " ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<script>alert('City Details  Deleted!!')</script>");
        GridView1.DataBind();

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
       
        txtcityname.Text = "";
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcityid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtcityname.Text = GridView1.SelectedRow.Cells[2].Text;
       
    }

    protected void txtcityid_TextChanged(object sender, EventArgs e)
    {

    }
}


