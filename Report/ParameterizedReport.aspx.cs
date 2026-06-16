using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Report_ParameterizedReport : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=E:\Final Child Vaccination Website\App_Data\child vaccination .mdf;Integrated Security = True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    ReportDocument crpt = new ReportDocument();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsearchdate_Click(object sender, EventArgs e)
    {
        DateTime date1 = DateTime.Parse(txtfromdate.Text);
        DateTime date2 = DateTime.Parse(txttodate.Text);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from vaccine_Appointment  where date between '"+date1+"' and '"+date2+"'", cn);
        da.Fill(ds, "vaccine_Appointment");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/vaccine_AppointmentReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "vaccine_Appointment");
        crpt.Refresh();
        cn.Close();
    }

    protected void btnsearchcomp_Click(object sender, EventArgs e)
    {
        string companyname = drpcompany.SelectedValue;
        DataSet ds = new DataSet();
        ds.EnforceConstraints = false;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from [View]  where vaccinecompanyname='"+companyname+"'", cn);
        da.Fill(ds, "View");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/viewReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "View");
        crpt.Refresh();
        cn.Close();

    }

    protected void btnsearchhospital_Click(object sender, EventArgs e)
    {
        string hospitalname = drphospital.SelectedValue;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from vaccine_Appointment  where hospitalname='"+hospitalname+ "'", cn);
        da.Fill(ds, "vaccine_Appointment");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/vaccine_AppointmentReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "vaccine_Appointment");
        crpt.Refresh();
        cn.Close();
    }

    protected void btnsearchvaccine_Click(object sender, EventArgs e)
    {
        string vaccinename = drpvaccine.SelectedValue;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from vaccine_Appointment  where vaccinename='" + vaccinename + "'", cn);
        da.Fill(ds, "vaccine_Appointment");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/vaccine_AppointmentReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "vaccine_Appointment");
        crpt.Refresh();
        cn.Close();
    }

    protected void btnsearchcity_Click(object sender, EventArgs e)
    {
        string cityname = drpcity.SelectedValue;
        DataSet ds = new DataSet();
        ds.EnforceConstraints = false;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from [View] where selectcity='"+cityname+"'", cn);
        da.Fill(ds, "View");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/viewReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "View");
        crpt.Refresh();
        cn.Close();
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        string hospitalname = drpview.SelectedValue;
        DataSet ds = new DataSet();
        ds.EnforceConstraints = false;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from [MaxSellView] where hospitalname='" + hospitalname + "'", cn);
        da.Fill(ds, "MaxSellView");
        da.Fill(ds);
        crpt.Load(Server.MapPath("~/Report/MaxSellReport.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "MaxSellView");
        crpt.Refresh();
        cn.Close();
    }
}