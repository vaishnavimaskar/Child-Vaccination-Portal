<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="managehospital.aspx.cs" Inherits="Admin_managehospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style35 {
        height: 250px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style2">
    <tr>
        <td>&nbsp;<strong><span class="auto-style21">Manage Hospital</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style35">
            <br />
            <div class="auto-style23">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="hospitalid" DataSourceID="SqlDataSource1" BorderColor="Silver" BorderStyle="Solid" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1397px" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="hospitalid" HeaderText="hospitalid" ReadOnly="True" SortExpression="hospitalid" />
                    <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                    <asp:BoundField DataField="cityname" HeaderText="cityname" SortExpression="cityname" />
                    <asp:BoundField DataField="hospitaladdress" HeaderText="hospitaladdress" SortExpression="hospitaladdress" />
                    <asp:BoundField DataField="hospitalemail" HeaderText="hospitalemail" SortExpression="hospitalemail" />
                    <asp:BoundField DataField="hospitalcontactno" HeaderText="contactno" SortExpression="hospitalcontactno" />
                    <asp:BoundField DataField="hospitalpassword" HeaderText="password" SortExpression="hospitalpassword" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
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
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hospital_Registration]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

