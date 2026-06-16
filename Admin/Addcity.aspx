<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Addcity.aspx.cs" Inherits="Admin_Addcity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 70%;
            
        }
        .auto-style4 {
            height: 53px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            height: 51px;
        text-align: right;
        width: 362px;
    }
        .auto-style35 {
            height: 53px;
        }
    .auto-style36 {
        height: 51px;
        text-align: left;
    }
    .auto-style37 {
        text-align: right;
        width: 362px;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table align="center" cellpadding="5" cellspacing="0" class="auto-style3">
            <tr>
                <td class="auto-style5" colspan="2"><strong>City Details<br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City Id:</td>
                <td class="auto-style36">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcityid" runat="server" Height="35px" Width="250px" Enabled="False" OnTextChanged="txtcityid_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City Name:</td>
                <td class="auto-style23">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcityname" runat="server" Height="35px" Width="250px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2"><strong>
                    <br />
                    <asp:Button ID="btnaddnew" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" Text="Add New" Width="120px" OnClick="btnaddnew_Click" BackColor="#99CCFF" style="border-radius:10px;" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btnsave" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" Text="Save" Width="120px" OnClick="btnsave_Click" BackColor="#99CCFF" style="border-radius:10px;" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btnupdate" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" Text="Update" Width="120px" OnClick="btnupload_Click" BackColor="#99CCFF" style="border-radius:10px;" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btndelete" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" Text="Delete" Width="120px" OnClick="btndelete_Click" BackColor="#99CCFF" style="border-radius:10px;"/>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="btnreset" runat="server" BorderStyle="None" CssClass="auto-style6" Height="35px" Text="Reset" Width="120px" OnClick="btnreset_Click" BackColor="#99CCFF" style="border-radius:10px;"/>
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style35" colspan="2" align="center">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style7" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="489px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="Solid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="cityid" HeaderText="cityid" SortExpression="cityid" />
                            <asp:BoundField DataField="cityname" HeaderText="cityname" SortExpression="cityname" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Addcity]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

