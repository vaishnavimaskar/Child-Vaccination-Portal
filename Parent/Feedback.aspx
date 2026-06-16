<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Parent_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 90%;
           
        }
        .auto-style3 {
            height: 26px;
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
            height: 71px;
        }
        .auto-style6 {
            height: 26px;
            width: 165px;
            text-align: left;
        }
       
        .auto-style10 {
            height: 45px;
            text-align: left;
        }
        .auto-style35 {
            width: 165px;
            text-align: left;
        }
        .auto-style36 {
            width: 165px;
            height: 45px;
            text-align: left;
        }
        .auto-style39 {
            width: 165px;
            text-align: left;
            height: 51px;
        }
        .auto-style40 {
            text-align: left;
            height: 51px;
        }
        .auto-style41 {
            height: 19px;
            width: 165px;
            text-align: left;
        }
        .auto-style42 {
            height: 19px;
            text-align: left;
        }
        .auto-style43 {
            width: 165px;
            height: 36px;
            text-align: left;
        }
        .auto-style44 {
            height: 36px;
            text-align: left;
        }
        .auto-style45 {
            height: 33px;
            width: 165px;
            text-align: left;
        }
        .auto-style46 {
            height: 33px;
            text-align: left;
        }
        .auto-style47 {
            height: 20px;
            width: 165px;
            text-align: left;
        }
        .auto-style48 {
            height: 20px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table align="center" class="auto-style2">
            <td class="auto-style4" colspan="2"><strong>Feedback<br />
                    </strong></td>
            
            <tr>
                <td class="auto-style36">Name:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtname" runat="server" Height="35px" Width="250px" OnTextChanged="txtname_TextChanged" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">Hospital Name:</td>
                <td class="auto-style42">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="hospitalname" DataValueField="hospitalname" Height="40px" Width="260px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hospitalname] FROM [Hospital_Registration]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">Email:</td>
                <td class="auto-style44">
                    <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="250px" Enabled="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">Mobile No:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtmobno" runat="server" Height="35px" Width="250px" Enabled="False"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobno" ForeColor="Red" ValidationExpression="[0-9]{10}" ErrorMessage="Invalid mobile number"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style47">Rating:</td>
                <td class="auto-style48">
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Images/Star.gif" Width="40px" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/Images/Star.gif" Width="40px" OnClick="ImageButton2_Click" />
&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" ImageUrl="~/Images/Star.gif" Width="40px" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" ImageUrl="~/Images/Star.gif" Width="40px" OnClick="ImageButton4_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="40px" ImageUrl="~/Images/Star.gif" Width="40px" OnClick="ImageButton5_Click" />
                    &nbsp;
                    <asp:Label ID="lblrating" runat="server" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">&nbsp;&nbsp; 
                    <asp:Label ID="lbl1" runat="server" Text="Very Satisfied"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="lbl2" runat="server" Text="Satisfied&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "></asp:Label>
                    &nbsp;<asp:Label ID="lbl3" runat="server" Text="Neutral"></asp:Label>
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl4" runat="server" Text="Unsatisfied&nbsp;"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="lbl5" runat="server" Text="Very UnSatisfied"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Doctor Knowledge:</td>
                <td class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RadioButton ID="rd1" runat="server" GroupName="a" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:RadioButton ID="rd2" runat="server" GroupName="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd3" runat="server" GroupName="a"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd4" runat="server" GroupName="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd5" runat="server" GroupName="a" />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Nurse Knowledge:</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RadioButton ID="rd6" runat="server" GroupName="b" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd7" runat="server" GroupName="b" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd8" runat="server" GroupName="b" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd9" runat="server" GroupName="b" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd10" runat="server" GroupName="b" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Waiting Time:</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd11" runat="server" GroupName="c" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd12" runat="server" GroupName="c" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd13" runat="server" GroupName="c" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:RadioButton ID="rd14" runat="server" GroupName="c" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd15" runat="server" GroupName="c" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Hyglene:</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RadioButton ID="rd16" runat="server" GroupName="d" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd17" runat="server" GroupName="d" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd18" runat="server" GroupName="d" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rd19" runat="server" GroupName="d" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:RadioButton ID="rd20" runat="server" GroupName="d" />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Message:</td>
                <td class="auto-style40">&nbsp;<asp:TextBox ID="txtmessage" runat="server" Height="35px" TextMode="MultiLine" Width="250px"></asp:TextBox>
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style7"><strong>
                    <br />
                    <asp:Button ID="btnsubmit" runat="server" BorderStyle="None" CssClass="auto-style8" Height="35px" OnClick="btnsubmit_Click" Text="Submit" Width="180px" BackColor="#99CCFF" style="border-radius:10px;" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>

