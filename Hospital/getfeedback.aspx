<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.master" AutoEventWireup="true" CodeFile="getfeedback.aspx.cs" Inherits="Hospital_getfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style35 {
            font-size: x-large;
        }
        .auto-style36 {
            font-size: x-large;
            height: 226px;
            width: 410px;
        }
        .auto-style37 {
            font-size: x-large;
            height: 40px;
            width: 410px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Get Feedback</td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback] WHERE ([hospitalname] = @hospitalname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="hospitalname" SessionField="hname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

