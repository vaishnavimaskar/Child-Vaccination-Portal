using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Parent_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["parent"].ToString();
        cn.Open();
        cmd.CommandText = "select parentname from Parent_Registration where username='" + username + "'";
        cmd.Connection = cn;
        txtname.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

        
        cn.Open();
        cmd.CommandText = "select parentemail from Parent_Registration where username='" + username + "'";
        cmd.Connection = cn;
       txtemail.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

       
        cn.Open();
        cmd.CommandText = "select parentcontactno from Parent_Registration where username='" + username + "'";
        cmd.Connection = cn;
        txtmobno.Text = cmd.ExecuteScalar().ToString();
        cn.Close();


    }

    protected void clear()
    {
        txtemail.Text = "";
        txtmobno.Text = "";
        txtmessage.Text = "";
        lblrating.Text = "";
        rd1.Checked = false;
        rd2.Checked = false;
        rd3.Checked = false;
        rd4.Checked = false;
        rd5.Checked = false;
        rd6.Checked = false;
        rd7.Checked = false;
        rd8.Checked = false;
        rd9.Checked = false;
        rd10.Checked = false;
        rd11.Checked = false;
        rd12.Checked = false;
        rd13.Checked = false;
        rd14.Checked = false;
        rd15.Checked = false;
        rd16.Checked = false;
        rd17.Checked = false;
        rd18.Checked = false;
        rd19.Checked = false;
        rd20.Checked = false;

        ImageButton1.ImageUrl = "~/Images/star.gif";
        ImageButton2.ImageUrl = "~/Images/star.gif";
        ImageButton3.ImageUrl = "~/Images/star.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";

    }





    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Name')</Script>");
        }
        else if (string.IsNullOrEmpty(txtemail.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Email')</Script>");
        }
        else if (string.IsNullOrEmpty(txtmobno.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Contact NO')</Script>");
        }
        else if (string.IsNullOrEmpty(lblrating.Text))

        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Rating ')</Script>");
        }
        else if (rd1.Checked == false && rd2.Checked == false && rd3.Checked == false && rd4.Checked == false && rd5.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Doctor Knowledge: ')</Script>");
        }
        else if (rd6.Checked == false && rd7.Checked == false && rd8.Checked == false && rd9.Checked == false && rd10.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Nurse Knowledge ')</Script>");
        }
        else if (rd11.Checked == false && rd12.Checked == false && rd13.Checked == false && rd14.Checked == false && rd15.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Waiting Time ')</Script>");
        }
        else if (rd16.Checked == false && rd17.Checked == false && rd18.Checked == false && rd19.Checked == false && rd20.Checked == false)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Hyglene ')</Script>");
        }

        else if (string.IsNullOrEmpty(txtmessage.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", " <Script> alert ('Please fill the Message')</Script>");
        }


        else
        {
            cn.Open();
            cmd.CommandText = "insert into Feedback values('" + txtname.Text + "','" + DropDownList1.Text + "','" + txtemail.Text + "'," + txtmobno.Text + ",'" + lblrating.Text + "' ,@p1,@p2,@p3,@p4, '" + txtmessage.Text + "')";
            if (rd1.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl1.Text);
            else if (rd2.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl2.Text);
            else if (rd3.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl3.Text);
            else if (rd4.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl4.Text);
            else if (rd5.Checked == true)
                cmd.Parameters.AddWithValue("@p1", lbl5.Text);
            else
                lblrating.Text = "select Doctor Knowledge";

            if (rd6.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl1.Text);
            else if (rd7.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl2.Text);
            else if (rd8.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl3.Text);
            else if (rd9.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl4.Text);
            else if (rd10.Checked == true)
                cmd.Parameters.AddWithValue("@p2", lbl5.Text);
            else
                lblrating.Text = "select Nurse Knowledge ";

            if (rd11.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl1.Text);
            else if (rd12.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl2.Text);
            else if (rd13.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl3.Text);
            else if (rd14.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl4.Text);
            else if (rd15.Checked == true)
                cmd.Parameters.AddWithValue("@p3", lbl5.Text);
            else
                lblrating.Text = "select  Waiting Time ";

            if (rd16.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl1.Text);
            else if (rd17.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl2.Text);
            else if (rd18.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl3.Text);
            else if (rd19.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl4.Text);
            else if (rd20.Checked == true)
                cmd.Parameters.AddWithValue("@p4", lbl5.Text);
            else
                lblrating.Text = "select Hyglene ";
            cmd.ExecuteNonQuery();
            cmd.Connection = cn;
            cn.Close();
            clear();
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Feedback submitted...!!')</Script>");
        }
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/star.gif";
        ImageButton3.ImageUrl = "~/Images/star.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        lblrating.Text = "1 Star";
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/star.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        lblrating.Text = "2 Star";
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton4.ImageUrl = "~/Images/star.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        lblrating.Text = "3 Star";
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton4.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton5.ImageUrl = "~/Images/star.gif";
        lblrating.Text = "4 Star";
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton2.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton3.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton4.ImageUrl = "~/Images/Filledstar.gif";
        ImageButton5.ImageUrl = "~/Images/Filledstar.gif";
        lblrating.Text = "5 Star";
    }




    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}