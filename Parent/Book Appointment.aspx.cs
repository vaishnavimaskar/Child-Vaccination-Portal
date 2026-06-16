using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Parent_Book_Appointment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(appointmentid) from vaccine_Appointment ";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            lblid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select max(appointmentid) from  vaccine_Appointment";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
           lblid.Text = y.ToString();
            cn.Close();
        }
        cn.Close();

        string username = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentname from Parent_Registration where username='" + username + "'";
        cmd.Connection = cn;
        lblpname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        string vid = Session["vid"].ToString();
        cn.Open();
        cmd.CommandText = "select vaccinename from Vaccine1 where vaccineid='" + vid + "'";
        cmd.Connection = cn;
        lblvname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

       
        cn.Open();
        cmd.CommandText = "select hospitalname from Vaccine1 where vaccineid='" + vid + "'";
        cmd.Connection = cn;
        lblhname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        cn.Open();
        cmd.CommandText = "select price from Vaccine1 where vaccineid='" + vid + "'";
        cmd.Connection = cn;
        lblamount.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


        if (!IsPostBack)
        {
            lbldate.Text = DateTime.Now.ToShortDateString();

        }
        if (!IsPostBack)
        {
            scanner0.Visible = false;
        }


    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into vaccine_Appointment values(" + lblid.Text + ",'" + lblpname.Text + "','" +DropDownList1.Text + "','"+lbldate.Text+"','" + lblhname.Text + "','" + lblvname.Text + "','" +lblamount.Text+ "',@p1)";
        if (rdcash0.Checked == true)
        
            cmd.Parameters.AddWithValue("@p1", rdcash0.Text);
        
        else if (rdonline0.Checked == true)
        
            cmd.Parameters.AddWithValue("@p1", rdonline0.Text);
            
        
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Appointment Details Submited!!')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        rdcash0.Text = "";
        rdonline0.Text = "";
    }

    protected void rdcash_CheckedChanged(object sender, EventArgs e)
    {
        scanner0.Visible = false;
    }

    protected void rdonline_CheckedChanged(object sender, EventArgs e)
    {
        scanner0.ImageUrl = "~/Images/Scanner1.jpg";
        scanner0.Visible = true;
    }
}