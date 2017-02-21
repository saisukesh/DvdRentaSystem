<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="frmAllVideos.aspx.cs" Inherits="frmVideos" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <div>
        <asp:DataList ID="dlVideo" runat="server" BackColor="Gray" BorderColor="#666666"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal"
            Width="300px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderTemplate>
                Movie Details</HeaderTemplate>
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="1px" />
            <ItemTemplate>
                <asp:Image ID="imgPhoto" runat="server" Width="250px" Height="200px" ImageUrl='<%# Bind("CoverPage","~/Video/{0}") %>' style="padding-left:40px"/>
                <b>Movie Name:</b>
                <asp:Label ID="lblMName" runat="server" Text='<%# Bind("MovieName") %>'></asp:Label>
                <br />
                <b>Description:</b>
                <asp:Label ID="lblDesc" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                <br />
               <b> Price:</b>
                <asp:Label ID="lblPrice" runat="server" Text=' <%# Bind("Price") %>'></asp:Label>
                <br />
                
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</center>
</asp:Content>

