<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="parent login.aspx.cs" Inherits="User_parent_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 35%;
            border-style: solid;
            
        }
        }
        .auto-style4 {
            font-size: xx-large;
            height: 90px;
            text-align: center;
        }
    .auto-style5 {
        width: 36%;
        height: 344px;
    }
    .auto-style6 {
        width: 408px;
    }
    .auto-style7 {
        width: 502px;
    }
    .auto-style8 {
        text-align: center;
        height: 103px;
    }
    .auto-style9 {
        text-align: center;
        height: 67px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <table align="left" class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="500px" ImageUrl="~/Images/i10.png" Width="700px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table align="center" class="auto-style3">
            <tr>
                <td colspan="2" class="auto-style4" style="text-align:center; "><strong>LOGIN</strong></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="250px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style9">
                    <br />
                    <asp:Button ID="btnlogin" runat="server" BorderStyle="None" Height="35px"  style="font-weight: 700" Text="Login" Width="120px" BackColor="#99CCFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" BorderStyle="None" Height="35px"  style="font-weight: 700" Text="Reset" Width="120px" BackColor="#99CCFF" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    <br />
                    <asp:Label ID="Label1" runat="server" Height="35px" Text="Don't have an account?" Width="189px"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/Parent Registration.aspx" Width="80px">Register </asp:HyperLink>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

