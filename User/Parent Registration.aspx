<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Parent Registration.aspx.cs" Inherits="User_Parent_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style3 {
        width: 85%;
        border-style: solid;
        border-width: 1px;
       
    }
    .auto-style4 {
        font-size: x-large;
        text-align: center;
    }
        .auto-style29 {
            text-align: left;
            width: 395px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
    <table align="center" cellpadding="5" cellspacing="0" class="auto-style3">
    <tr>
        <td class="auto-style4" colspan="2"><strong>Parent Registration<hr />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style23">Parent Id:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtid0" runat="server" Height="35px" Width="250px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Parent Name:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtname0" runat="server" Height="35px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Parent Address:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtaddress0" runat="server" Height="35px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Parent Email:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtemail0" runat="server" Height="35px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail0" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Parent contact No:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtcontactno0" runat="server" Height="35px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Contact No" ForeColor="Red" ValidationExpression="[0-9]{10}" ControlToValidate="txtcontactno0"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Username:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtusername0" runat="server" Height="35px" Width="250px"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23">Parent Password:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtpassword1" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpassword2" ControlToValidate="txtpassword1" ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Confirm Password</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtpassword2" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style1">
            <asp:Button ID="btnsubmit0" runat="server" BorderStyle="None" Height="40px" OnClick="btnsubmit_Click" style="font-weight: 700;border-radius:10px;" Text="Submit" Width="120px" BackColor="#99CCFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreset0" runat="server" BorderStyle="None" Height="40px" OnClick="btnreset_Click" style="font-weight: 700;border-radius:10px;" Text="Reset" Width="120px" BackColor="#99CCFF" />
        &nbsp;<asp:ScriptManager ID="ScriptManager2" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
</table>
            </td>
            <td>
                <asp:Image ID="Image6" runat="server" Height="600px" ImageUrl="~/Images/parentregis.png" Width="600px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

