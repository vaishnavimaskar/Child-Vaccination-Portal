<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="User_Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 45%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style4 {
            font-size: x-large;
        text-align: center;
    }
        .auto-style6 {
            width: 118px;
            height: 32px;
        text-align: left;
    }
        .auto-style7 {
            height: 32px;
        width: 401px;
        text-align: left;
    }
        .auto-style8 {
        width: 118px;
        text-align: left;
    }
    .auto-style9 {
        width: 45%;
        height: 410px;
    }
    .auto-style10 {
        width: 401px;
        text-align: left;
    }
        .auto-style11 {
            text-align: center;
            height: 106px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="left" class="auto-style9">
            <tr>
                <td>
                    <br />
                    <br />
                   
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="450px" ImageUrl="~/Images/image-4.png" Width="600px" />
                </td>
            </tr>
        </table>
        <br />
        <table align="center" cellpadding="5" cellspacing="0" class="auto-style3">
            <tr>
                <td class="auto-style4" colspan="2"><strong>Enquiry</strong></td>
            </tr>
            <tr>
                <td class="auto-style6">Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Date:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtdate" runat="server" Height="35px" TextMode="Date" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Contact No:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtcontactno" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Invalid Contact No" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Subject:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtsubject" runat="server" Height="72px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Message:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtmessage" runat="server" Height="69px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <strong>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" BorderStyle="None" Height="40px" Width="120px" OnClick="btnsubmit_Click1" BackColor="#99CCFF" style="border-radius:10px;"/>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong>
                    <asp:Button ID="btnreset" runat="server" Text="Reset" BorderStyle="None" Height="40px" Width="120px" OnClick="btnreset_Click" CssClass="auto-style29"  BackColor="#99CCFF" style="border-radius:10px;"/>
                    </strong>&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

