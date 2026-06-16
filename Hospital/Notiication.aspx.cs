using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Hospital_Notiication : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "insert into Notifications values('" + lblbdate.Text + "','" + lblpname.Text + "','" + lblparentno.Text + "','" + lblcname.Text + "','" + lblhname.Text + "','" + lblvname + "','" + txtdate.Text + "'," + lblamount + ")";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        try
        {
            string smtpUserName, smtpPassword;
            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];

            MailMessage mail = new MailMessage();
            SmtpClient smtp_client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(lblemail.Text);
            mail.Subject = "Regarding Your Child Vaccination Appointment";
            mail.Body = (" Dear " + lblpname.Text + "\n Thankyou for booking your child's vaccination with us. " + "\n\n We are pleased to confirm the appointment as per the following:" + "Child Name:" + lblcname.Text + "\n Date of Appointment:" + txtdate.Text + "\nLocation:" + lblhname + "\n Please ensure that you arrive at least 10 minutes early.kindly bring your childs vaccination card and any releavent medical records." + "\n If you have any questions or need to reshedule, feel free to contact us ." + "\nwarm regards," + "\n ChildCare");
            smtp_client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_client.Credentials = new NetworkCredential(smtpUserName, smtpPassword);
            smtp_client.EnableSsl = true;
            smtp_client.Send(mail);
            ClientScript.RegisterStartupScript(Page.GetType(), "submit", "<script>alert('Notification Sent Successfuly!')</script>");
        }
        catch(Exception ex)
        {
            Console.WriteLine(ex.Message);

        }
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblpname.Text = GridView1.SelectedRow.Cells[2].Text;
        lblcname.Text = GridView1.SelectedRow.Cells[3].Text;
        lblbdate.Text = GridView1.SelectedRow.Cells[4].Text;
        lblhname.Text = GridView1.SelectedRow.Cells[5].Text;
        lblvname.Text = GridView1.SelectedRow.Cells[6].Text;
       lblamount.Text = GridView1.SelectedRow.Cells[7].Text;


        cn.Open();
        cmd.CommandText = "select parentemail from Parent_Registration where parentname='" + lblpname.Text + "'";
        cmd.Connection = cn;
        lblemail.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

        cn.Open();
        cmd.CommandText = "select parentcontactno from Parent_Registration where parentname='" + lblpname.Text + "'";
        cmd.Connection = cn;
        lblparentno.Text = cmd.ExecuteScalar().ToString();
        cn.Close();

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}