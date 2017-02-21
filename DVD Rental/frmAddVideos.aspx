<%@ Page Language="C#" MasterPageFile="~/Seller.master" AutoEventWireup="true" CodeFile="frmAddVideos.aspx.cs" Inherits="frmAddVideos" Title="Add Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style5
        {
            width: 464px;
        }
        .style6
        {
            text-align: right;
            width: 464px;
            height: 37px;
        }
        .style7
        {
            height: 37px;
        }
        .style8
        {
            text-align: right;
            width: 464px;
            height: 40px;
        }
        .style9
        {
            height: 40px;
        }
        .style10
        {
            text-align: right;
            width: 464px;
            height: 36px;
        }
        .style11
        {
            height: 36px;
        }
        .style12
        {
            width: 464px;
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    Add Videos</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
            <td class="style6">
                Movie Name</td>
            <td class="style7">
                <asp:TextBox ID="txName" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Price</td>
            <td class="style9">
                <asp:TextBox ID="txtPrice" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Description</td>
            <td class="style11">
                <asp:TextBox ID="txtDesc" runat="server" Width="163px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Cover Page</td>
            <td class="style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="248px" />
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnRegister" runat="server" BackColor="#002200" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" Text="Submit" Width="94px" 
                    onclick="btnRegister_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" BackColor="#002200" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" Text="Cancel" Width="81px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    </p>
</asp:Content>

