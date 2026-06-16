<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view hospital.aspx.cs" Inherits="Admin_view_hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style3 {
            height: 26px;
            font-size: xx-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>View Hospital<br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style23" align="center">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="hospitalid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" BorderStyle="Solid" Width="174px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="hospitalid" HeaderText="hospitalid" ReadOnly="True" SortExpression="hospitalid" />
                            <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                            <asp:BoundField DataField="cityname" HeaderText="cityname" SortExpression="cityname" />
                            <asp:BoundField DataField="hospitaladdress" HeaderText="hospitaladdress" SortExpression="hospitaladdress" />
                            <asp:BoundField DataField="hospitalemail" HeaderText="hospitalemail" SortExpression="hospitalemail" />
                            <asp:BoundField DataField="hospitalcontactno" HeaderText="hospitalcontactno" SortExpression="hospitalcontactno" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="hospitalpassword" HeaderText="password" SortExpression="hospitalpassword" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Hospital_Registration]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

