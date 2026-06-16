using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_searchcity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Session["city"] = DropDownList1.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        Session["zid"] = btn.CommandArgument;
        Response.Redirect("~/User/parentlogin1.aspx");

        
    }
}