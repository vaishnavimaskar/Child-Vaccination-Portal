<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="vaccine Calender.aspx.cs" Inherits="User_vaccine_Calender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 90%;
    }
    .auto-style5 {
        font-size: x-large;
    }
    .auto-style6 {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style4">
        <tr>
            <td><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Your Child Need Vaccines As They Grow!"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Recommended Immunizations for Birth Through 6 Years Old"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="600px" ImageUrl="~/Images/i1.png" OnClick="ImageButton1_Click" Width="1300px" />
            </td>
        </tr>
        <tr>
            <td><span id="ContentPlaceHolder1_Label2" class="auto-style6" style="font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                <br />
                Recommended Immunizations for 7 years Through 18 Years Old<br />
                </span>
                <br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="600px" ImageUrl="~/Images/i5.png" Width="1300px" OnClick="ImageButton2_Click" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

