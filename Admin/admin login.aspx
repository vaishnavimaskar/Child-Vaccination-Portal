<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin login.aspx.cs" Inherits="Admin_admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
            font-size: x-large;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            width: 193px;
        }
        .auto-style6 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
         <asp:Panel runat="server" Height="800" BackImageUrl="~/Images/medical-technology-treatment-medicine-on-gray-background-vector.jpg" Width="1700px">
            <br />
            <br/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table align="left" cellpadding="5" cellspacing="0" class="" style="color: #FFFFFF;background-color:#CCCCFF;opacity:2.5;border-radius:10px;">
                <tr>
                    <td class="auto-style3" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6" style="color: #000000">&nbsp; LOGIN<br /> </span></strong></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="color: #000000">Admin Name:</td>
                    <td>
                        <br />
                        <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="color: #000000">Admin Password:</td>
                    <td>
                        <br />
                        <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><strong>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" BorderStyle="None" CssClass="auto-style4" Height="35px" OnClick="btnsubmit_Click" Text="Login" Width="120px" BackColor="#99CCFF" style="border-radius:10px;" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Button ID="btnreset" runat="server" BorderStyle="None" CssClass="auto-style4" Height="35px" OnClick="btnreset_Click" Text="Reset" Width="120px" BackColor="#99CCFF" style="border-radius:10px;"/>
                        </strong></td>
                </tr>
            </table>
            </asp:Panel>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
