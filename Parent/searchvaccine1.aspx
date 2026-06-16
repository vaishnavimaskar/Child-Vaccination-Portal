<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="searchvaccine1.aspx.cs" Inherits="Parent_searchvaccine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        
    }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            width: 194px;
            text-align: justify;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style9 {
            width: 194px;
            height: 19px;
            text-align: justify;
        }
        .auto-style10 {
            text-align: left;
            height: 19px;
        }
        .auto-style11 {
            width: 194px;
            height: 26px;
            text-align: justify;
        }
        .auto-style12 {
            text-align: left;
            height: 26px;
        }
        .auto-style20{
             width: 100%;
        border-style: solid;
        border-width: 1px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table align="center" cellpadding="3">
        <tr>
            <td>Select City:&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="35px" Width="250px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Hospital:&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="hospitalname" DataValueField="hospitalname" Height="35px" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitalname] FROM [Hospital_Registration] WHERE ([cityname] = @cityname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="cityname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="35px" OnClick="Button1_Click" Text="Search" Width="120px" BackColor="#99CCFF" style="border-radius:10px;"/>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<br />
                <asp:Panel ID="Panel1" runat="server">
                <table align="center" class="auto-style20">
                    <tr>
                        <td class="auto-style9">Hospital Name : </td>
                        <td class="auto-style10">
                            <asp:Label ID="lblhname" runat="server" Height="25px" Width="400px"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Hospital Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style6">
                            <asp:Label ID="lblhaddress" runat="server" Height="25px" Width="700px"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Contact No: </td>
                        <td class="auto-style12">
                            <asp:Label ID="lblcontno" runat="server" Height="25px" Width="400px"></asp:Label>
                            <br />
                        </td>
                    </tr>
                </table>
                    </asp:Panel>
                <br />
                <div class="auto-style6">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="vaccineid" DataSourceID="SqlDataSource3" CellSpacing="50" RepeatColumns="3" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table align="center" cellpadding="4" class="auto-style20">
                            <tr>
                                <td colspan="2"><strong>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("vaccinename") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td>Vaccine Company Name:</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("vaccinecompanyname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vaccine Mfg Date:</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("vaccinemfgdate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vaccine Expiry Date:</td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("vaccineexpirydate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Vaccine Week:</td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("vaccineweek") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="auto-style3">
                                    <br />
                                    <strong>
                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("vaccineid") %>' CssClass="auto-style4" Height="35px" OnClick="Button2_Click" Text="Book " Width="150px" BorderStyle="None" BackColor="#99CCFF" style="border-radius:10px;" />
                                    </strong>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vaccine1] WHERE (([selectcity] = @selectcity) AND ([hospitalname] = @hospitalname))">
                    <SelectParameters>
                        <asp:SessionParameter Name="selectcity" SessionField="cityname" Type="String" />
                        <asp:SessionParameter Name="hospitalname" SessionField="hospitalname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

