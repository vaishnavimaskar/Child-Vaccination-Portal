<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.master" AutoEventWireup="true" CodeFile="viewappointment.aspx.cs" Inherits="Hospital_viewappointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style36 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style36">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Appoinment</p>
<p class="auto-style36">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="appointmentid" DataSourceID="SqlDataSource1" BorderStyle="Solid" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1499px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="appointmentid" HeaderText="appointmentid" ReadOnly="True" SortExpression="appointmentid" />
            <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
            <asp:BoundField DataField="childname" HeaderText="childname" SortExpression="childname" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
            <asp:BoundField DataField="vaccinename" HeaderText="vaccinename" SortExpression="vaccinename" />
            <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
            <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" SortExpression="paymentmode" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [vaccine_Appointment] WHERE ([hospitalname] = @hospitalname)">
        <SelectParameters>
            <asp:SessionParameter Name="hospitalname" SessionField="hname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p class="auto-style36">
    &nbsp;</p>
<p class="auto-style36">
    &nbsp;</p>
</asp:Content>

