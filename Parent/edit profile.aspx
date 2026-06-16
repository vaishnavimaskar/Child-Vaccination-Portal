<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="edit profile.aspx.cs" Inherits="Parent_edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 28%;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
        }
    .auto-style4 {
        width: 1227px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4">
        <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>Edit Profile<br />
                    </strong></td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="parentid" DataSourceID="SqlDataSource1" Height="500px" Width="736px" OnPageIndexChanging="DetailsView1_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="parentid" HeaderText="parentid" ReadOnly="True" SortExpression="parentid" />
                            <asp:BoundField DataField="parentname" HeaderText="parentname" SortExpression="parentname" />
                            <asp:BoundField DataField="parentaddress" HeaderText="parentaddress" SortExpression="parentaddress" />
                            <asp:BoundField DataField="parentemail" HeaderText="parentemail" SortExpression="parentemail" />
                            <asp:BoundField DataField="parentcontactno" HeaderText="parentcontactno" SortExpression="parentcontactno" />
                            <asp:BoundField DataField="parentpassword" HeaderText="parentpassword" SortExpression="parentpassword" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Parent_Registration] WHERE ([username] = @username)" UpdateCommand="update Parent_Registration set parentname=@parentname, parentaddress=@parentaddress,parentemail=@parentemail,parentcontactno=@parentcontactno,parentpassword=@parentpassword where username=@username">
                        <SelectParameters>
                            <asp:SessionParameter Name="username" SessionField="parent" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

