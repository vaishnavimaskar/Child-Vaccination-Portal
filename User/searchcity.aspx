<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="searchcity.aspx.cs" Inherits="User_searchcity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            height: 207px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style29 {
            height: 36px;
            text-align: left;
        }
        .auto-style30 {
            margin-top: 8px;
        }
        .auto-style31 {
            margin-left: 37px;
        }
        .auto-style32 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style4">
            <tr>
                <td>City Name:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="35px" Width="250px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsearch0" runat="server" Height="40px" OnClick="btnsearch_Click" Text="Search" Width="120px" BorderStyle="None" BackColor="#99CCFF" style="border-radius:10px;"/>
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" DataKeyField="hospitalid" CellPadding="4" CssClass="auto-style32" ForeColor="#333333">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <table align="center" class="auto-style5">
                                <tr>
                                    <td rowspan="4">
                                        <asp:Image ID="Image1" runat="server" Height="144px" ImageUrl='<%# Eval("hospitalimage") %>' Width="150px" BorderStyle="None" />
                                    </td>
                                    <td class="auto-style23">
                                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" Height="25px" Text='<%# Eval("hospitalname") %>' Width="392px" CssClass="auto-style30"></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style29">
                                        <asp:Label ID="Label2" runat="server" Height="25px" Text='<%# Eval("hospitaladdress") %>' Width="700px" CssClass="auto-style31"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Height="25px" Text='<%# Eval("hospitalemail") %>' Width="250px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label4" runat="server" Height="25px" Text='<%# Eval("hospitalcontactno") %>' Width="438px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="auto-style1"><strong>
                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("hospitalid") %>' CssClass="auto-style6" Height="35px" Text="View Details" Width="140px" OnClick="Button1_Click" BackColor="#99CCFF" BorderStyle="None" />
                                        <br />
                                        </strong></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Hospital_Registration] WHERE ([cityname] = @cityname)">
                        <SelectParameters>
                            <asp:SessionParameter Name="cityname" SessionField="city" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

