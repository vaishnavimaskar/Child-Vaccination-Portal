<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 60%;
            border-style: solid;
        height: 383px;
    }
        .auto-style7 {
        width: 502px;
    }
    .auto-style9 {
        text-align: center;
        height: 67px;
    }
    .auto-style8 {
        text-align: center;
        height: 92px;
    }
        .auto-style29 {
            width: 299px;
        }
        .auto-style31 {
            width: 427px;
        }
        .auto-style32 {
            font-size: x-large;
            height: 97px;
            text-align: center;
        }
        .auto-style33 {
            font-size: x-large;
            height: 97px;
            text-align: center;
        }
    .auto-style35 {
        width: 60%;
        border-style: solid;
        height: 380px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style31">
        <table align="center" class="auto-style35">
            <tr>
                <td colspan="2" class="auto-style32" style="text-align:center; ">Parent Login<hr class="auto-style1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Username:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="250px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <br />
                    Password:</td>
                <td class="auto-style7">
                    <br />
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style9">
                    <br />
                    <asp:Button ID="btnlogin" runat="server" BorderStyle="None" Height="40px" OnClick="btnlogin_Click" style="font-weight: 700;border-radius:10px;" Text="Login" Width="120px"  BackColor="#99CCFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" BorderStyle="None" Height="40px" OnClick="btnreset_Click" style="font-weight: 700;border-radius:10px;" Text="Reset" Width="120px" BackColor="#99CCFF"  />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Height="35px" Text="Don't have an account?" Width="189px"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Height="35px" NavigateUrl="~/User/Parent Registration.aspx" Width="80px">Register </asp:HyperLink>
                </td>
            </tr>
        </table>
                </td>
                <td>
        <table align="center" class="auto-style3">
            <tr>
                <td colspan="2" class="auto-style33">Hospital Login<hr />
                </td>
            </tr>
            <tr>
                <td>Username:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtusername0" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    Password:</td>
                <td class="auto-style29">
                    <br />
                    <asp:TextBox ID="txtpassword0" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <br />
                    <asp:Button ID="btnlogin1" runat="server" BorderStyle="None" Height="40px"  style="font-weight: 700;border-radius:10px;" Text="Login" Width="120px"  OnClick="btnlogin1_Click" BackColor="#99CCFF"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset1" runat="server" BorderStyle="None" Height="40px"  style="font-weight: 700;border-radius:10px;" Text="Reset" Width="120px"  OnClick="btnreset1_Click" BackColor="#99CCFF" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style8">
                    <br />
                    <asp:Label ID="Label2" runat="server" Height="35px" Text="Don't have an account?" Width="189px"></asp:Label>
                    <asp:HyperLink ID="HyperLink2" runat="server" Height="35px" NavigateUrl="~/User/Hospital Registration.aspx" Width="80px">Register </asp:HyperLink>
                </td>
            </tr>
        </table>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="432px" ImageUrl="~/Images/i10.png" Width="500px" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

