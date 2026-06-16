<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.master" AutoEventWireup="true" CodeFile="edit profile.aspx.cs" Inherits="Hospital_edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 60%;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>Edit Profile</strong></td>
            </tr>
            <tr>
                <td align="center">
                    <div class="">
                        <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="500px" Width="700px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="hospitalname" HeaderText="hospitalname" SortExpression="hospitalname" />
                            <asp:BoundField DataField="hospitaladdress" HeaderText="hospitaladdress" SortExpression="hospitaladdress" />
                            <asp:BoundField DataField="hospitalemail" HeaderText="hospitalemail" SortExpression="hospitalemail" />
                            <asp:BoundField DataField="hospitalcontactno" HeaderText="hospitalcontactno" SortExpression="hospitalcontactno" />
                            <asp:BoundField DataField="hospitalpassword" HeaderText="hospitalpassword" SortExpression="hospitalpassword" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitalname], [cityname], [hospitaladdress], [hospitalemail], [hospitalcontactno], [hospitalpassword], [username] FROM [Hospital_Registration] WHERE ([username] = @username)" UpdateCommand="update Hospital_Registration set hospitalname=@hospitalname,hospitaladdress=@hospitaladdress,hospitalemail=@hospitalemail ,hospitalcontactno=@hospitalcontactno, username=@username,hospitalpassword=@hospitalpassword where username=@username">
                        <SelectParameters>
                            <asp:SessionParameter Name="username" SessionField="hospital" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

