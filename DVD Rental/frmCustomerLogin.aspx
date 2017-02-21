<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmCustomerLogin.aspx.cs" Inherits="frmCustomerLogin" Title="Customer Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
        }
        .style8
        {
            text-align: center;
        }
        .style9
        {
            text-align: right;
            width: 586px;
        }
    .style10
    {
        text-align: left;
        font-weight: bold;
        font-size: x-large;
    }
        .style11
        {
            text-align: center;
            width: 586px;
            height: 23px;
        }
        .style12
        {
            height: 23px;
        }
        .style13
        {
            text-align: right;
            width: 586px;
            height: 47px;
        }
        .style14
        {
            height: 47px;
        }
        .style15
        {
            text-align: right;
            width: 586px;
            height: 40px;
        }
        .style16
        {
            height: 40px;
        }
        .style18
        {
            height: 23px;
            text-align: left;
        }
        .style19
        {
            text-align: right;
            width: 586px;
            height: 23px;
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
                <td class="style10">
                    Customer Login</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15" style="text-align: right">
                    User Name</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13" style="text-align: right">
                    Password</td>
                <td class="style14">
                    <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" 
                        Width="154px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                <td class="style18">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#002200" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="28px" 
                        onclick="btnLogin_Click" style="top: 407px; left: 505px; " 
                        Width="94px" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" 
                        BackColor="#002200" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                        Height="29px" onclick="btnClear_Click" 
                        style="top: 407px; left: 607px; " Width="97px" />
                            </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style12">
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    If you are a New Customer please
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/frmRegistration.aspx">Sign Up</asp:LinkButton>
                    &nbsp;Here</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </asp:Content>
