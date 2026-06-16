<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="viewchildren.aspx.cs" Inherits="Admin_viewchildren" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style35 {
        height: 279px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style2">
            <tr>
                <td><strong><span class="auto-style21">View Children Details</span></strong><br />
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style35">
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="childid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1503px" BorderColor="Silver" BorderStyle="Solid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="childid" HeaderText="childid" ReadOnly="True" SortExpression="childid" />
                            <asp:BoundField DataField="childname" HeaderText="childname" SortExpression="childname" />
                            <asp:BoundField DataField="childaddress" HeaderText="childaddress" SortExpression="childaddress" />
                            <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
                            <asp:BoundField DataField="childbirthdate" HeaderText="childbirthdate" SortExpression="childbirthdate" />
                            <asp:BoundField DataField="childage" HeaderText="childage" SortExpression="childage" />
                            <asp:BoundField DataField="childweight" HeaderText="childweight" SortExpression="childweight" />
                            <asp:BoundField DataField="childheight" HeaderText="childheight" SortExpression="childheight" />
                            <asp:BoundField DataField="childmedicalhistory" HeaderText="childmedicalhistory" SortExpression="childmedicalhistory" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Child_Registration]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

