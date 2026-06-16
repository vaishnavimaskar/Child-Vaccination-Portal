<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ParameterizedReport.aspx.cs" Inherits="Report_ParameterizedReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style35 {
        text-align: right;
    }
    .auto-style36 {
        height: 67px;
        text-align: left;
    }
    .auto-style37 {
        height: 67px;
        text-align: center;
    }
    .auto-style38 {
        height: 31px;
        text-align: left;
    }
    .auto-style39 {
        height: 31px;
        text-align: right;
    }
        .auto-style40 {
            border-style: solid;
             height: 250px;
             width:500px;
        }
        .auto-style41 {
            width: 629px;
        }
        .auto-style42 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style41">
                <table class="auto-style40">
                    <tr>
                        <td colspan="2">Search By Date</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">From Date:</td>
                        <td class="auto-style23">
                            <asp:TextBox ID="txtfromdate" runat="server" TextMode="Date" Height="40px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35">To Date:</td>
                        <td class="auto-style23">
                            <asp:TextBox ID="txttodate" runat="server" TextMode="Date" Height="40px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <asp:Button ID="btnsearchdate" runat="server" BorderStyle="None" Height="35px" OnClick="btnsearchdate_Click" Text="Search" Width="150px" style="border-radius:10px;" BackColor="#99CCFF" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style40">
                    <tr>
                        <td colspan="2">Search By City</td>
                    </tr>
                    <tr>
                        <td>Select City:</td>
                        <td class="auto-style23">
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="drpcity" runat="server" Height="45px" Width="270px"  style="border-radius:10px;" DataSourceID="SqlDataSource4" DataTextField="selectcity" DataValueField="selectcity">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [selectcity] FROM [View]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsearchcity" runat="server" BorderStyle="None" Height="35px" Text="Search" Width="150px"  style="border-radius:10px;" OnClick="btnsearchcity_Click" BackColor="#99CCFF" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style41">
                <table class="auto-style40">
                    <tr>
                        <td colspan="2">Search Vaccine By Company</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">Select Company:</td>
                        <td class="auto-style36">
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="drpcompany" runat="server" Height="45px" Width="270px"  style="border-radius:10px;" DataSourceID="SqlDataSource1" DataTextField="vaccinecompanyname" DataValueField="vaccinecompanyname">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [vaccinecompanyname] FROM [View]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsearchcomp" runat="server" BorderStyle="None" Height="35px" OnClick="btnsearchcomp_Click" Text="Search" Width="150px"  style="border-radius:10px;" BackColor="#99CCFF" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style40">
                    <tr>
                        <td colspan="2">Search Vaccine By Hospital</td>
                    </tr>
                    <tr>
                        <td class="auto-style39">Select Hospital:</td>
                        <td class="auto-style38">
                            &nbsp;<asp:DropDownList ID="drphospital" runat="server" DataSourceID="SqlDataSource3" DataTextField="hospitalname" DataValueField="hospitalname" Height="45px" Width="270px" style="border-radius:10px;">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hospitalname] FROM [vaccine_Appointment]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsearchhospital" runat="server" BorderStyle="None" Height="35px" OnClick="btnsearchhospital_Click" Text="Serach" Width="150px"  style="border-radius:10px;" BackColor="#99CCFF" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style41">
                <table class="auto-style40">
                    <tr>
                        <td colspan="2">Search By Vaccine</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">Select Vaccine:</td>
                        <td class="auto-style23">
                            <asp:DropDownList ID="drpvaccine" runat="server" DataSourceID="SqlDataSource2" DataTextField="vaccinename" DataValueField="vaccinename" Height="45px" Width="270px"  style="border-radius:10px;">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [vaccinename] FROM [vaccine_Appointment]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnsearchvaccine" runat="server" BorderStyle="None" Height="35px" OnClick="btnsearchvaccine_Click" Text="Search" Width="150px"  style="border-radius:10px;" BackColor="#99CCFF"/>
                            <br />
                            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style40">
                    <tr>
                        <td class="auto-style42">Most Selling Vaccine</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style2">
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="drpview" runat="server" DataSourceID="SqlDataSource5" DataTextField="hospitalname" DataValueField="hospitalname" Height="40px" Width="270px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hospitalname] FROM [vaccine_Appointment]"></asp:SqlDataSource>
                            <asp:Button ID="btnview" runat="server" BorderStyle="None" Height="35px" Text="View" Width="150px"  style="border-radius:10px;" BackColor="#99CCFF" OnClick="btnview_Click"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

