using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_user : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Button btn = sender as Button;
        Session["search"] = txtsearch.Text;
        Response.Redirect("~/USer/search.aspx");

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
