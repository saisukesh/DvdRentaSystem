<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmRegistration.aspx.cs" Inherits="frmRegistration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 100%;
    }
    .style7
    {
        text-align: right;
            width: 480px;
        }
    .style11
    {
            text-align: right;
            height: 32px;
            width: 480px;
        }
    .style12
    {
        height: 32px;
    }
    .style13
    {
            text-align: right;
            height: 33px;
            width: 480px;
        }
    .style14
    {
        height: 33px;
    }
    .style15
    {
            text-align: right;
            height: 34px;
            width: 480px;
        }
    .style16
    {
        height: 34px;
    }
    .style17
    {
            text-align: right;
            height: 37px;
            width: 480px;
        }
    .style18
    {
        height: 37px;
    }
    .style19
    {
            text-align: right;
            height: 36px;
            width: 480px;
        }
    .style20
    {
        height: 36px;
    }
    .style21
    {
        text-align: right;
        height: 45px;
            width: 480px;
        }
    .style22
    {
        height: 45px;
    }
        .style23
        {
            color: #003300;
            font-size: x-large;
            font-weight: bold;
        }
        .style24
        {
            width: 480px;
        }
        .style25
        {
            width: 480px;
            height: 23px;
        }
        .style26
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="style6">
        <tr>
            <td class="style23" colspan="2" style="text-align: center">
                Customer&nbsp;Registration</td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26">
                </td>
        </tr>
        <tr>
            <td class="style11">
                First Name</td>
            <td class="style12">
                <asp:TextBox ID="txtFirstName" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Last Name</td>
            <td class="style14">
                <asp:TextBox ID="txtLastName" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Gender</td>
            <td class="style12">
                <asp:DropDownList ID="ddlGender" runat="server" Height="25px" Width="169px">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Date of Birth</td>
            <td class="style20">
                <asp:TextBox ID="txtDob" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                E-Mail</td>
            <td class="style18">
                <asp:TextBox ID="txtEmail" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                User ID</td>
            <td class="style20">
                <asp:TextBox ID="txtId" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Password</td>
            <td class="style14">
                <asp:TextBox ID="txtPwd" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Confirm Password</td>
            <td class="style14">
                <asp:TextBox ID="txtCpwd" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                Address</td>
            <td class="style22">
                <asp:TextBox ID="txtAddress" runat="server" Width="163px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Mobile No</td>
            <td class="style16">
                <asp:TextBox ID="txtMobile" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td>
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
            <td class="style24">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>



