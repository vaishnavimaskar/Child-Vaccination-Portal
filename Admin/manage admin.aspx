<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="manage admin.aspx.cs" Inherits="Admin_manage_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 60%;
            
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style36 {
            text-align: left;
          
        }
        .auto-style37 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" cellpadding="5" cellspacing="0" class="auto-style2">
        <tr>
            <td class="auto-style3" colspan="2"><strong>Manage Admin</strong></td>
        </tr>
        <tr>
            <td class="auto-style37">Username:</td>
            <td class="auto-style36">
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">Password:</td>
            <td class="auto-style36">
                <asp:TextBox ID="txtpassword" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">Retype-Password:</td>
            <td class="auto-style36">
                <asp:TextBox ID="txtresetpassword" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"><strong>
                <asp:Button ID="btnsave" runat="server" BorderStyle="None" CssClass="auto-style4" Height="35px" OnClick="btnsave_Click" Text="Save" Width="120px" style="border-radius:10px;" BackColor="#99CCFF" />
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="btnupdate" runat="server" BorderStyle="None" CssClass="auto-style4" Height="35px" OnClick="btnupdate_Click" Text="Update" Width="120px" style="border-radius:10px;" BackColor="#99CCFF" />
                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="btndelete" runat="server" BorderStyle="None" CssClass="auto-style4" Height="35px" OnClick="btndelete_Click" Text="Delete" Width="120px" style="border-radius:10px;" BackColor="#99CCFF" />                                 </strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="adminname" HeaderText="adminname" SortExpression="adminname" />
                        <asp:BoundField DataField="adminpassword" HeaderText="adminpassword" SortExpression="adminpassword" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Admin]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

