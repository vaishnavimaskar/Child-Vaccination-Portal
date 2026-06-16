<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="parentlogin1.aspx.cs" Inherits="User_parentlogin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 49%;
            border-style: solid;
            border-width: 1px;
            height: 404px;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style7 {
            height: 73px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style38 {
            width: 407px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style2">
        <tr>
            <td class="auto-style38">
                <asp:Image ID="Image6" runat="server" Height="500px" ImageUrl="~/Images/i10.png" Width="500px" />
            </td>
            <td>
        <table align="center" cellpadding="4" class="auto-style4">
            <tr>
                <td class="auto-style5" colspan="2"><strong>LOGIN</strong></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2"><strong>
                    <br />
                    <asp:Button ID="btnlogin" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" OnClick="btnlogin_Click" Text="Login" Width="120px" BackColor="#99CCFF" style="border-radius:10px;" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btnreset" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" OnClick="btnreset_Click" Text="Reset" Width="120px" BackColor="#99CCFF" style="border-radius:10px;"/>
                    </strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    Don&#39;t have an account?&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/Parent Registration.aspx" Width="120px">Register</asp:HyperLink>
                </td>
            </tr>
        </table>
            </td>
        </tr>
    </table>
</asp:Content>

