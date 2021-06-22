<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dagitim.Master" AutoEventWireup="true" CodeBehind="MusterilerDgtm.aspx.cs" Inherits="KargoTakipUygulaması.WebFormDagitim.Müşteriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Musteriler</title>
</head>
<body>
        <div>
            <h4>Musteriler</h4>
            <hr />
        </div>
        <div>
                    <table>
                            <tr>
                                 <td>
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="musteriId" DataSourceID="SqlDataSource1">
                                         <Columns>
                                             <asp:BoundField DataField="musteriId" HeaderText="Müşteri No" InsertVisible="False" ReadOnly="True" SortExpression="musteriId" />
                                             <asp:BoundField DataField="musteriKimlikNo" HeaderText="Kimlik No" SortExpression="musteriKimlikNo" />
                                             <asp:BoundField DataField="musteriAd" HeaderText="Ad" SortExpression="musteriAd" />
                                             <asp:BoundField DataField="musteriSoyad" HeaderText="Soyad" SortExpression="musteriSoyad" />
                                             <asp:BoundField DataField="musteriTel" HeaderText="Telefon" SortExpression="musteriTel" />
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
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KargoTakipSistemiConnectionString %>" SelectCommand="SELECT [musteriId], [musteriKimlikNo], [musteriAd], [musteriSoyad], [musteriTel], [adres] FROM [Musteriler]"></asp:SqlDataSource>
                               </td>  
                            </tr>
                   </table>
       </div>
    </body>
</html>
</asp:Content>
