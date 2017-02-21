<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="frmQuantity.aspx.cs" Inherits="frmQuantity" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 44px;
        }
        .style4
        {
            height: 42px;
        }
        .style5
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="text-align: right">
                Movie Name</td>
            <td class="style3">
                <asp:TextBox ID="txtMovie" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: right">
                Price</td>
            <td class="style4">
                <asp:TextBox ID="txtprice" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" style="text-align: right">
                Quanity</td>
            <td class="style5">
                <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="True" 
                    ontextchanged="txtQuantity_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Update Quanity" BackColor="#002200" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="28px" 
                        onclick="btnLogin_Click" style="top: 407px; left: 505px; " 
                        Width="152px" />
                    </td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

