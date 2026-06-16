<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="vaccinedetails.aspx.cs" Inherits="Parent_vaccinedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style35 {
            text-align: left;
            height: 60px;
        }
        .auto-style3{
            border-width:1px;
            border-style: solid;
        }
        .auto-style36 {
            font-weight: bold;
        }
        .auto-style37 {
            height: 31px;
        }
        .auto-style38 {
            text-align: left;
            height: 11px;
        }
        .auto-style39 {
            text-align: left;
            height: 24px;
        }
        .auto-style40 {
            text-align: left;
            height: 10px;
        }
        .auto-style41 {
            width: 930px;
        }
        .auto-style42 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style41">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="hospitalid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="500px">
                        <ItemTemplate>
                            <table align="center" class="auto-style2">
                                <tr>
                                    <td rowspan="4">
                                        <asp:Image ID="Image6" runat="server" Height="150px" ImageUrl='<%# Eval("hospitalimage") %>' Width="150px" />
                                    </td>
                                    <td class="auto-style39">
                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("hospitalname") %>' Width="700px" Height="35px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">
                                        <asp:Label ID="lbladdress" runat="server" Width="700px" Text='<%# Eval("hospitaladdress") %>' Height="35px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">
                                        &nbsp;<asp:Label ID="lblemail" runat="server" Text='<%# Eval("hospitalemail") %>' Width="250px" Height="35px"></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style38">
                                        &nbsp;<asp:Label ID="lblcontact" runat="server" Text='<%# Eval("hospitalcontactno") %>' Height="35px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <strong>
                                        <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderStyle="None" CommandArgument='<%# Eval("hospitalname") %>' CssClass="auto-style36" Height="40px" OnClick="Button1_Click" style="border-radius:10px;" Text="View Vaccine" Width="160px"  />
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style37" colspan="2">
                                        <asp:DataList ID="DataList2" runat="server" DataKeyField="vaccineid" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                            <ItemStyle BackColor="White" />
                                            <ItemTemplate>
                                                <table align="center" aria-orientation="horizontal" class="auto-style3">
                                                    <tr>
                                                        <td aria-orientation="vertical" class="auto-style23" colspan="2"><strong>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("vaccinename") %>'></asp:Label>
                                                            </strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td aria-orientation="vertical" class="auto-style23">Vaccine Company Name:</td>
                                                        <td aria-orientation="vertical" class="auto-style23">
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("vaccinecompanyname") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td aria-orientation="vertical" class="auto-style23">Vaccine mfg Date:</td>
                                                        <td aria-orientation="vertical" class="auto-style23">
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("vaccinemfgdate") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td aria-orientation="vertical" class="auto-style23">Vaccine Expiry Date:</td>
                                                        <td aria-orientation="vertical" class="auto-style23">
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("vaccineexpirydate") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td aria-orientation="vertical" class="auto-style23">Price:</td>
                                                        <td aria-orientation="vertical" class="auto-style23">
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td aria-orientation="vertical" class="auto-style42" colspan="2">
                                                            <strong>
                                                            <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" BorderStyle="None" CommandArgument='<%# Eval("vaccineid") %>' CssClass="auto-style36" Height="40px" OnClick="Button2_Click" Text="Book" Width="150px" style="border-radius:10px;" />
                                                            </strong>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <br />
                                            </ItemTemplate>
                                            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vaccine1] WHERE (([hospitalname] = @hospitalname) AND ([hospitalname] = @hospitalname2))">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblname" Name="hospitalname" PropertyName="Text" Type="String" />
                                                <asp:SessionParameter Name="hospitalname2" SessionField="v1id" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hospital_Registration] WHERE ([hospitalid] = @hospitalid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="hospitalid" SessionField="zid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">
                    <table align="center" class="auto-style2">
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

