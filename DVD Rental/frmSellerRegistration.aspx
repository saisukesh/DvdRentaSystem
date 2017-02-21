<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmSellerRegistration.aspx.cs" Inherits="frmSellerRegistration" Title="Seller Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 100%;
    }
        .style23
        {
            color: #003300;
            font-size: x-large;
            font-weight: bold;
        }
        .style28
    {
        width: 494px;
    }
        .style31
        {
            width: 494px;
            height: 79px;
        }
        .style32
        {
            height: 79px;
        }
    .style33
    {
        text-align: right;
        width: 494px;
        height: 39px;
    }
    .style34
    {
        height: 39px;
    }
    .style35
    {
        text-align: right;
        width: 494px;
        height: 36px;
    }
    .style36
    {
        height: 36px;
    }
    .style37
    {
        text-align: right;
        width: 494px;
        height: 38px;
    }
    .style38
    {
        height: 38px;
    }
    .style39
    {
        text-align: right;
        width: 494px;
        height: 33px;
    }
    .style40
    {
        height: 33px;
    }
    .style41
    {
        text-align: right;
        width: 494px;
        height: 46px;
    }
    .style42
    {
        height: 46px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="style6">
        <tr>
            <td class="style23" colspan="2" style="text-align: center">
                Seller&nbsp;Registration</td>
        </tr>
        <tr>
            <td class="style28">
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style33">
                First Name</td>
            <td class="style34">
                <asp:TextBox ID="txtFirstName" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style35">
                Last Name</td>
            <td class="style36">
                <asp:TextBox ID="txtLastName" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style35">
                E-Mail</td>
            <td class="style36">
                <asp:TextBox ID="txtEmail" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style37">
                User ID</td>
            <td class="style38">
                <asp:TextBox ID="txtId" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style37">
                Password</td>
            <td class="style38">
                <asp:TextBox ID="txtPwd" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style39">
                Confirm Password</td>
            <td class="style40">
                <asp:TextBox ID="txtCpwd" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style41">
                Address</td>
            <td class="style42">
                <asp:TextBox ID="txtAddress" runat="server" Width="163px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style39">
                Mobile No</td>
            <td class="style40">
                <asp:TextBox ID="txtMobile" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btnRegister" runat="server" BackColor="#002200" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" Text="Register" Width="104px" 
                    onclick="btnRegister_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" BackColor="#002200" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" Text="Cancel" Width="81px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style31">
                </td>
            <td class="style32">
                </td>
        </tr>
    </table>
</p>
</asp:Content>

