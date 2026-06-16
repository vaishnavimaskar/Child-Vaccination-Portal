<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Hospital Registration.aspx.cs" Inherits="User_Hospital_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            width: 95%;
            border-style: solid;
            border-width: 1p;
            align:left:
        }
        .auto-style4 {
            font-size: x-large;
            height: 45px;
        text-align: center;
    }
        .auto-style8 {
        width: 212px;
        text-align: left;
    }
    .auto-style6 {
        width: 301px;
        text-align: left;
    }
        .auto-style5 {
            margin-bottom: 0px;
        }
        .auto-style29 {
            width: 436px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
        <table align="center" cellpadding="5" cellspacing="0" class="auto-style3">
            <tr>
                <td class="auto-style4" colspan="3"><strong>Hospital Registration<hr />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8">Hospital Id:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtid" runat="server" Height="35px" Width="250px" Enabled="False"></asp:TextBox>
                </td>
                <td rowspan="9" class="auto-style29">
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Top" Width="150px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnupload" runat="server" Height="35px" OnClick="btnupload_Click" style="font-weight: 700;border-radius:10px;" Text="Upload" Width="120px" BackColor="#99CCFF" BorderStyle="None" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Hospital Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">City Name:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="35px" Width="250px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Hospital Address:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtaddress" runat="server" Height="35px" Width="250px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Hospital Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Hospital Contact No:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtcontactno" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Invalid Contact No" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Hospital Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconfirmpassword" ControlToValidate="txtpassword" ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtconfirmpassword" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Username:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style1">
                    <br />
                    <asp:Button ID="btnsubmit" runat="server" Height="40px" OnClick="btnsubmit_Click" style="font-weight: 700;border-radius:10px;" Text="Submit" Width="120px" CssClass="auto-style5" BackColor="#99CCFF" BorderStyle="None" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" Height="40px" OnClick="btnreset_Click" style="font-weight: 700;border-radius:10px;" Text="Reset" Width="120px" BackColor="#99CCFF" BorderStyle="None" />
                </td>
            </tr>
        </table>
            </td>
            <td>
                <asp:Image ID="Image6" runat="server" Height="500px" ImageUrl="~/Images/child-vaccination-concept-free-vector.jpg" Width="580px" BackColor="#99CCFF" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

