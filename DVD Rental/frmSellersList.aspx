﻿<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="frmSellersList.aspx.cs" Inherits="frmSellersList" Title="Sellers List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style4
        {
            width: 390px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    Sellers List</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        AutoGenerateDeleteButton="True" DataKeyNames="UserID">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                                SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                SortExpression="UserID" ReadOnly="True" />
                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                SortExpression="Address" />
                            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                                SortExpression="MobileNo" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Online MovieConnectionString %>" 
                        DeleteCommand="DELETE FROM [SellerReg] WHERE [UserID] = @UserID" 
                        InsertCommand="INSERT INTO [SellerReg] ([FirstName], [LastName], [Email], [UserID], [Address], [MobileNo]) VALUES (@FirstName, @LastName, @Email, @UserID, @Address, @MobileNo)" 
                        SelectCommand="SELECT [FirstName], [LastName], [Email], [UserID], [Address], [MobileNo] FROM [SellerReg]" 
                        UpdateCommand="UPDATE [SellerReg] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Address] = @Address, [MobileNo] = @MobileNo WHERE [UserID] = @UserID">
                        <DeleteParameters>
                            <asp:Parameter Name="UserID" Type="String" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="UserID" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="UserID" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
