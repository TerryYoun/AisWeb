<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_09196482GTY.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
        }

        .auto-style5 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: small;
            background-color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="summary">
        <table width="100%" bgcolor="#FFFBD6" height="300px">
            <tr>
                <td align="center">
                    <table>
                        <tr>
                            <td width="70%">
                                <strong>
                                    <asp:Label ID="lbUserName" runat="server" Text="Label" CssClass="auto-style4"></asp:Label>
                                </strong>
                            </td>
                            <td width="30%"><strong>
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="tbLogout" runat="server" OnClick="tbLogout_Click" Text="Logout" CssClass="auto-style5" />
                            </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
