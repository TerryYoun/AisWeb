<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_09196482GTY.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            text-align: center;
            color: #0033CC;
        }

        .auto-style8 {
            font-size: large;
            color: #FF0000;
        }

        .auto-style9 {
            width: 100%;
            border: 1px #000000 solid;
            padding: 0px 12px;
        }

        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="summary">
        <table width="100%" bgcolor="#FFFBD6">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                <strong>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="reg" CssClass="auto-style8" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="register">
        <table width="100%" bgcolor="#FFFBD6" height="200px">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                <table class="auto-style9">
                                    <tr height="40">
                                        <td colspan="3" class="auto-style6"><strong>User Registration</strong></td>
                                    </tr>
                                    <tr height="40">
                                        <td>Enter Your Name</td>
                                        <td>
                                            <asp:TextBox ID="tbRegName" runat="server" Width="270px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbRegName" ErrorMessage="Please enter your name." Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr height="40">
                                        <td>Email Address (User ID)</td>
                                        <td>
                                            <asp:TextBox ID="tbRegEmail" runat="server" Width="270px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbRegEmail" ErrorMessage="Email address must be entered and it should be in correct format." Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="reg" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbRegEmail" Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="reg" ErrorMessage="Email address must be entered and it should be in correct format.">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Confirm Email Address</td>
                                        <td>
                                            <asp:TextBox ID="tbRegConfirmEmail" runat="server" Width="270px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbRegConfirmEmail" ControlToValidate="tbRegEmail" ErrorMessage="Email address and confirm email address must be same." Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="reg">*</asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr height="40">
                                        <td>Password</td>
                                        <td>
                                            <asp:TextBox ID="tbRegPwd" runat="server" Width="270px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbRegPwd" ErrorMessage="Password must be enterd." Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="reg">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr height="40">
                                        <td>Confirm Password</td>
                                        <td>
                                            <asp:TextBox ID="tbRegConfirmPwd" runat="server" Width="270px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="tbRegConfirmPwd" ControlToValidate="tbRegPwd" ErrorMessage="Password and confirm password must be same. " Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="reg">*</asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr height="40">
                                        <td>Select Your Country</td>
                                        <td>
                                            <asp:DropDownList ID="tbDropCountry" runat="server" DataSourceID="SqlDataSource1" DataTextField="countryName" DataValueField="countryName" Width="278px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMidSemesterTestConnectionString %>" SelectCommand="SELECT * FROM [tblCountries]"></asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr height="40">
                                        <td class="auto-style7" colspan="3">
                                            <strong>
                                                <asp:Button ID="Button1" runat="server" Text="Register User" CssClass="auto-style5" ValidationGroup="reg" OnClick="Button1_Click" Style="color: #FFFFFF; font-weight: bold; font-size: large; background-color: #FF0000" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Home" CssClass="auto-style5" OnClick="Button2_Click" Style="color: #FFFFFF; font-weight: bold; font-size: large; background-color: #FF0000" />
                                            </strong>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
