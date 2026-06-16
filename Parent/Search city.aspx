<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="Search city.aspx.cs" Inherits="Parent_Search_city" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    .auto-style3 {
        width: 80%;
        border-style: solid;
        border-width: 1px;
    }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
            text-align: center;
        }
            
        .auto-style36 {
            height: 137px;
        }
        .auto-style37 {
            height: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style37">
                <div class="auto-style5">
                    <br />
                    <br />
                <asp:Label ID="Label2" runat="server" Text="City Name:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="35px" Width="250px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Search" Width="120px" BorderStyle="None" BackColor="#99CCFF" style="border-radius:10px;" />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cityname] FROM [Addcity]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                <br />
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="hospitalid" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="40px">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <table align="center" cellpadding="3" class="auto-style3" style="border-radius:10px;">
                            <tr>
                                <td rowspan="5">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="160px" ImageUrl='<%# Eval("hospitalimage") %>' />
                                </td>
                                <td><strong>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("hospitalname") %>' Width="700px"></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("hospitaladdress") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("hospitalemail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("hospitalcontactno") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("hospitalid") %>' Text="View Details" OnClick="Button2_Click" style="height: 29px; border-radius:10px;" BorderStyle="None" Height="40px" BackColor="#99CCFF" Width="150px"/>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Hospital_Registration] WHERE ([cityname] = @cityname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="cityname" SessionField="city1" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

