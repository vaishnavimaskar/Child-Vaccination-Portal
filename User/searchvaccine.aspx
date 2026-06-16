<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="searchvaccine.aspx.cs" Inherits="User_searchvaccine1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 80%;
           
             padding: 5px;
        }
        .auto-style2 {
            width: 80%;
         }
        .auto-style10 {
            text-align: left;
            height: 38px;
        }
        .auto-style31 {
            text-align: left;
            width: 737px;
        }
        .auto-style34 {
            text-align: left;
            width: 207px;
            height: 66px;
        }
        .auto-style36 {
            width: 60%;
            height: 163px;
            border-style:solid;
            border-width:1px;
        }
        
        .auto-style20{
             width: 100%;
        border-style: solid;
        border-width: 1px;}
        .auto-style3 {
            text-align: right;
        }
                
        .auto-style38 {
            width: 1069px;
            padding: 5px;
        }
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table align="center" class="auto-style38">
            <tr>
                <td>Select city:
                    <asp:DropDownList ID="DropDownListcity" runat="server" DataSourceID="SqlDataSource1" DataTextField="cityname" DataValueField="cityname" Height="40px" Width="250px" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [cityname] FROM [Addcity]"></asp:SqlDataSource>
&nbsp;Select Hospital:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="hospitalname" DataValueField="hospitalname" Height="35px" Width="250px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitalname] FROM [Hospital_Registration] WHERE ([cityname] = @cityname)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListcity" Name="cityname" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" BorderStyle="None" Height="40px" Width="150px" BackColor="#99CCFF" style="border-radius:10px;"/>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    &nbsp; 
                    <asp:Panel ID="Panel1" runat="server">
                        <table align="center" class="auto-style36">
                    <tr>
                        <td class="auto-style23">Hospital Name : </td>
                        <td class="auto-style10">
                            <asp:Label ID="lblhname" runat="server" Height="25px" Width="400px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">Hospital Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style23">
                            <asp:Label ID="lblhaddress" runat="server" Height="25px" Width="1007px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">Contact No: </td>
                        <td class="auto-style23">
                            <asp:Label ID="lblcontno" runat="server" Height="25px" Width="400px"></asp:Label>
                        </td>
                    </tr>
                </table>
                    </asp:Panel>
                    <br />
                    <div class="auto-style23">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="vaccineid" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="30" Width="1065px">
                        <ItemTemplate>
                            <table align="center" cellpadding="4" class="auto-style20">
                                <tr>
                                    <td colspan="2" align="center"><strong>
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
                                    <td class="auto-style3" colspan="2">
                                        <br />
                                        <strong>
                                        <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" BorderStyle="None" CommandArgument='<%# Eval("vaccineid") %>' CssClass="auto-style4" Height="35px"  style="border-radius:10px;" Text="Book " Width="150px" OnClick="Button2_Click1" />
                                        </strong></td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vaccine1] WHERE (([selectcity] = @selectcity) AND ([hospitalname] = @hospitalname))">
                        <SelectParameters>
                            <asp:SessionParameter Name="selectcity" SessionField="c1name" Type="String" />
                            <asp:SessionParameter Name="hospitalname" SessionField="h1name" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

