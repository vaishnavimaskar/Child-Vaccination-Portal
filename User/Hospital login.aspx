<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Hospital login.aspx.cs" Inherits="User_Hospital_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        
        .auto-style4 {
            font-size: x-large;
            height: 39px;
        text-align: center;
    }
        .auto-style5 {
            height: 26px;
        width: 701px;
    }
        .auto-style6 {
            width: 52%;
        }
    .auto-style8 {
        text-align: center;
        height: 90px;
    }
    .auto-style9 {
        width: 40%;
        text-align: left;
        height: 360px;
        border-style: solid;
        border-width: 1px;
    }
    .auto-style10 {
        text-align: center;
        height: 87px;
    }
    .auto-style29 {
        width: 299px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
<br />
&nbsp;&nbsp;
    <table align="left" class="auto-style6">
        <tr>
            <td class="auto-style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="500px" ImageUrl="~/Images/i10.png" Width="700px" />
                </td>
        </tr>
    </table>
        <table align="center" class="auto-style9">
            <tr>
                <td colspan="2" class="auto-style4"><strong>LOGIN</strong></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td class="auto-style29">
                    <br />
                    <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td class="auto-style29">
                    <br />
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    <br />
                    <asp:Button ID="btnlogin" runat="server" BorderStyle="None" Height="35px" OnClick="btnlogin_Click" style="font-weight: 700" Text="Login" Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" BorderStyle="None" Height="35px" OnClick="btnreset_Click" style="font-weight: 700" Text="Reset" Width="120px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style10">
                    <br />
                    <asp:Label ID="Label1" runat="server" Height="35px" Text="Don't have an account?" Width="189px"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/Hospital Registration.aspx" Width="80px">Register </asp:HyperLink>
                </td>
            </tr>
        </table>
    <br />
</asp:Content>

