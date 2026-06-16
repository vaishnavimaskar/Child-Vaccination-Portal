<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view feedback.aspx.cs" Inherits="Admin_view_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>View Feedback<br />
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <div class="auto-style23">
                        <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" BorderColor="Silver" BorderStyle="Solid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                            <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                            <asp:BoundField DataField="doctorknowledge" HeaderText="doctorknowledge" SortExpression="doctorknowledge" />
                            <asp:BoundField DataField="nurseknowledge" HeaderText="nurseknowledge" SortExpression="nurseknowledge" />
                            <asp:BoundField DataField="waitingtime" HeaderText="waitingtime" SortExpression="waitingtime" />
                            <asp:BoundField DataField="hyglene" HeaderText="hyglene" SortExpression="hyglene" />
                            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Feedback]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

