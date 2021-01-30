<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_09196482GTY.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            border: 1px #000000 solid;
            padding: 0px 12px;
        }

        .auto-style4 {
            font-size: x-large;
            text-align: center;
        }

        .auto-style5 {
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FF3300;
        }

        .auto-style6 {
            background-color: #FFFBD6;
            color: #003399;
            font-size: xx-large;
        }

        .auto-style7 {
            text-align: center;
        }
    .auto-style8 {
        color: #FF0000;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="footer">
        <table width="100%" bgcolor="#FFFBD6">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>

                                <strong>

                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style8" ValidationGroup="login" />

                                </strong>

                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="login">
        <table width="100%" bgcolor="#FFFBD6">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td>
                                <table class="auto-style3">
                                    <tr height="40">
                                        <td class="auto-style4" colspan="3"><strong><span class="auto-style6">User Login</span></strong></td>
                                    </tr>
                                    <tr height="40">
                                        <td><strong>Email Address(User ID)</strong></td>
                                        <td>
                                            <asp:TextBox ID="tbLoginId" runat="server" Width="273px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Input Email Address" ControlToValidate="tbLoginId" Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr height="40">
                                        <td><strong>Password</strong></td>
                                        <td>
                                            <asp:TextBox ID="tbLoginPwd" runat="server" Width="273px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Input Password" ControlToValidate="tbLoginPwd" Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationGroup="login">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr height="40">
                                        <td class="auto-style7" colspan="3"><strong>
                                            <asp:Button ID="btnLogin" runat="server" CssClass="auto-style5" Text="Login" OnClick="btnLogin_Click" ValidationGroup="login" />&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnLoginRegister" runat="server" CssClass="auto-style5" Text="Register" OnClick="btnLoginRegister_Click" />
                                        </strong></td>
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
