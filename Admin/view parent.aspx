<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view parent.aspx.cs" Inherits="Admin_view_parent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            
        }
        .auto-style3 {
            font-size: xx-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>View Parent</strong></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="parentid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderColor="Silver" BorderStyle="Solid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="parentid" HeaderText="parentid" ReadOnly="True" SortExpression="parentid" />
                            <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
                            <asp:BoundField DataField="parentaddress" HeaderText="parentaddress" SortExpression="parentaddress" />
                            <asp:BoundField DataField="parentemail" HeaderText="parentemail" SortExpression="parentemail" />
                            <asp:BoundField DataField="parentcontactno" HeaderText="parentcontactno" SortExpression="parentcontactno" />
                            <asp:BoundField DataField="parentpassword" HeaderText="parentpassword" SortExpression="parentpassword" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Parent_Registration]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

