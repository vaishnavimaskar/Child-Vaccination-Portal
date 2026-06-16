<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="User_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            hospitalname:
            <asp:Label ID="hospitalnameLabel" runat="server" Text='<%# Eval("hospitalname") %>' />
            <br />
            selectcity:
            <asp:Label ID="selectcityLabel" runat="server" Text='<%# Eval("selectcity") %>' />
            <br />
            vaccinename:
            <asp:Label ID="vaccinenameLabel" runat="server" Text='<%# Eval("vaccinename") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [hospitalname], [selectcity], [vaccinename] FROM [vaccine1] WHERE ([hospitalname] LIKE '%' + @hospitalname + '%' OR [vaccinename] LIKE '%' + @vaccinename + '%' OR [selectcity] LIKE '%' + @selectcity + '%')" >
        <SelectParameters>
            <asp:SessionParameter Name="hospitalname" SessionField="search" Type="String" />
            <asp:SessionParameter Name="vaccinename" SessionField="search" Type="String" />
             <asp:SessionParameter Name="selectcity" SessionField="search" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


