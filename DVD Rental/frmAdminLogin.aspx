<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmAdminLogin.aspx.cs" Inherits="frmAdminLogin" Title="Admin Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .style6
    {
        width: 100%;
    }
    .style7
    {
        text-align: left;
        font-weight: bold;
        font-size: x-large;
    }
    .style8
    {
        width: 609px;
    }
        .style9
        {
            width: 609px;
            height: 44px;
        }
        .style10
        {
            height: 44px;
        }
        .style11
        {
            width: 609px;
            height: 40px;
        }
        .style12
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
    <br />
    <table class="style6">
        <tr>
            <td class="style7" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                Admin Login</td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" style="text-align: right">
                User Name</td>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11" style="text-align: right">
                Password</td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="173px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Button ID="Button4" runat="server" BackColor="#002200" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" onclick="Button4_Click" 
                    style="position: relative; top: 0px; left: 534px; width: 73px" Text="Login" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" BackColor="#002200" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" onclick="Button5_Click" Text="Cancel" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

