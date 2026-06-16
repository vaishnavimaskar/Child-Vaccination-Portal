<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.master"   AutoEventWireup="true" CodeFile="Notiication.aspx.cs" Inherits="Hospital_Notiication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style2">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="appointmentid" HeaderText="appointmentid" ReadOnly="True" SortExpression="appointmentid" />
                    <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
                    <asp:BoundField DataField="childname" HeaderText="childname" SortExpression="childname" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                    <asp:BoundField DataField="vaccinename" HeaderText="vaccinename" SortExpression="vaccinename" />
                    <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
                    <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [vaccine_Appointment] WHERE ([hospitalname] = @hospitalname)">
                <SelectParameters>
                    <asp:SessionParameter Name="hospitalname" SessionField="hname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <table align="center" class="auto-style2">
                <tr>
                    <td>Booking Date:</td>
                    <td>
                        <asp:Label ID="lblbdate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Parent Name:</td>
                    <td>
                        <asp:Label ID="lblpname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Parent No:</td>
                    <td>
                        <asp:Label ID="lblparentno" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Child Name:</td>
                    <td>
                        <asp:Label ID="lblcname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Hospital Name:</td>
                    <td>
                        <asp:Label ID="lblhname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Vaccine Name:</td>
                    <td>
                        <asp:Label ID="lblvname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Appoinment Date:</td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server" Height="40px" TextMode="Date" Width="250px"></asp:TextBox>
                        <asp:Label ID="lblemail" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Total Amount:</td>
                    <td>
                        <asp:Label ID="lblamount" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

