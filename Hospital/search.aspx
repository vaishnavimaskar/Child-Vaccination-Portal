<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/Hospital.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Hospital_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
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
            <asp:SessionParameter Name="hospitalname" SessionField="search2" Type="String" />
            <asp:SessionParameter Name="vaccinename" SessionField="search2" Type="String" />
             <asp:SessionParameter Name="selectcity" SessionField="search2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
