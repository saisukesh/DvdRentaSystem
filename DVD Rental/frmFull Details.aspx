<%@ Page Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="frmFull Details.aspx.cs" Inherits="frmListofVideos" Title="List of Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style4
        {
            height: 41px;
        text-align: center;
    }
        .style5
        {
            height: 41px;
            text-align: center;
            width: 391px;
        }
        .style6
        {
            height: 41px;
            text-align: left;
            width: 495px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td class="style3" style="text-align: center" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" rowspan="4">
                <asp:DataList ID="dlVideo" runat="server" BackColor="Gray" BorderColor="#666666"
            BorderStyle="None" BorderWidth="1px" CellPadding="1" CellSpacing="1" 
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="1" RepeatDirection="Horizontal"
            Width="300px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="1px" />
            <ItemTemplate>
                <asp:Image ID="imgPhoto" runat="server" Width="250px" Height="200px" ImageUrl='<%# Bind("CoverPage","~/Video/{0}") %>' style="padding-left:40px"/>                                              
            </ItemTemplate>
        </asp:DataList>
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="lblMname" runat="server" 
                    style="text-align: center; font-weight: 700; color: #FF0000; font-size: x-large"></asp:Label>
            </td>
            <td class="style4" rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lblDesc" runat="server" 
                    style="text-align: center; font-weight: 700; color: #000000; font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <b>Price:
                </b>
                <asp:Label ID="lblPrice" runat="server" 
                    style="text-align: center; font-weight: 700; color: #000000; font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" BackColor="#002200" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="28px" 
                        onclick="btnAdd_Click" style="top: 407px; left: 505px; " 
                        Width="161px" />
                    &nbsp;
                    <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" BackColor="#002200" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Height="28px" 
                        onclick="btnContinue_Click" style="top: 407px; left: 505px; " 
                        Width="201px" />
                    </td>
        </tr>
    </table>

</asp:Content>

