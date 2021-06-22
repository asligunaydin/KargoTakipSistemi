<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Calisan.Master" AutoEventWireup="true" CodeBehind="Subeler.aspx.cs" Inherits="KargoTakipUygulaması.WebForm.Subeler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Şubeler</title>
</head>
<body>
        <div>
            <h4>Şubeler</h4>
            <hr />
        </div>
        <div>
                    <table>
                            <tr>
                                 <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="subeId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                        <Columns>
                                            <asp:BoundField DataField="subeId" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="subeId" />
                                            <asp:BoundField DataField="subeIsim" HeaderText="Şube" SortExpression="subeIsim" />
                                            <asp:BoundField DataField="subeTel" HeaderText="Telefon" SortExpression="subeTel" />
                                            <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                     </asp:GridView>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KargoTakipSistemiConnectionString %>" SelectCommand="SELECT [subeId], [subeIsim], [subeTel], [adres] FROM [Subeler]"></asp:SqlDataSource>
                                </td> 
                                
                            </tr>
                        </table>
        </div>
    </body>
</html>
</asp:Content>


