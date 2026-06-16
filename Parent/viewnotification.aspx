<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="viewnotification.aspx.cs" Inherits="Parent_viewnotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style35 {
            font-size: x-large;
        }
        .auto-style36 {
            margin-left: 0px;
        }
        .auto-style37 {
            font-size: x-large;
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style37"><strong>View Notification</strong></td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <div class="auto-style23">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style36" Width="1504px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="bookingdate" HeaderText="bookingdate" SortExpression="bookingdate" />
                            <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
                            <asp:BoundField DataField="parentno" HeaderText="parentno" SortExpression="parentno" />
                            <asp:BoundField DataField="childname" HeaderText="childname" SortExpression="childname" />
                            <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                            <asp:BoundField DataField="vaccinename" HeaderText="vaccinename" SortExpression="vaccinename" />
                            <asp:BoundField DataField="appointmentdate" HeaderText="appointmentdate" SortExpression="appointmentdate" />
                            <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notifications] WHERE ([parentname] = @parentname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="parentname" SessionField="pname" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

