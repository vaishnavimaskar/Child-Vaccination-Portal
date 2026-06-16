<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="home vaccine.aspx.cs" Inherits="User_home_vaccine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 50%;
        }
        .auto-style5 {
            width: 30%;
            height:70px;

            border-style: solid;
            border-width: 1px;
        }
        .auto-style6 {
            height: 12px;
            text-align: left;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            height: 29px;
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
            text-align: left;
        }
        .auto-style10 {
            text-align: left;
            height: 61px;
        }
        .auto-style11 {
            width: 1000px;
        }
        .auto-style12 {
            width: 917px;
        }
    .auto-style13 {
        text-align: left;
        height: 45px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="left" class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="500px" ImageUrl="~/Images/i7.png" OnClick="ImageButton1_Click" Width="1000px" CssClass="auto-style11" style="margin-right: 0px" />
                </td>
            </tr>
        </table>
    </p>
    <table align="right" class="auto-style5">
        <tr>
            <td class="auto-style6"><strong><span class="auto-style7">Book Home Vaccination Online</span><br class="auto-style7" />
                <span class="auto-style7">Do you have a valid prescription?<br />
                <br />
                </span></strong></td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="300px" placeholder="Enter Name"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:TextBox ID="txtdate" runat="server" Height="35px" TextMode="Date" Width="300px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:TextBox ID="txtmobno" runat="server" Height="35px" Width="300px" OnTextChanged="txtmobno_TextChanged" placeholder="Enter Mobileno"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="300px" placeholder="Enter Email"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <div class="auto-style23">
                    Select City<br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="35px" Width="300px">
                </asp:DropDownList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cityname] FROM [Addcity]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                Upload Prescription<br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="250px" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:TextBox ID="txtcommends" runat="server" Height="35px" Width="300px" TextMode="MultiLine" placeholder="Enter comments" ></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnsubmit" runat="server" Height="40px" Text="Submit Query" Width="300px" OnClick="btnsubmit_Click" BackColor="#99CCFF" style="border-radius:10px;" BorderStyle="None" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

