<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Calisan.Master" AutoEventWireup="true" CodeBehind="Dagitim.aspx.cs" Inherits="KargoTakipUygulaması.WebForm.Dagitim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Dağıtım Elemanları</title>
</head>
<body>
        <div>
            <h4>Dağıtım Elemanları</h4>
            <hr />
        </div>
        <div>
                    <table>
                            <tr>
                                 <td>
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="dagiticiId" DataSourceID="SqlDataSource4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                         <Columns>
                                             <asp:BoundField DataField="dagiticiId" HeaderText="No" ReadOnly="True" SortExpression="dagiticiId" />
                                             <asp:BoundField DataField="dagiticiKimlikNo" HeaderText="Kimlik No" SortExpression="dagiticiKimlikNo" />
                                             <asp:BoundField DataField="dagiticiAd" HeaderText="Ad" SortExpression="dagiticiAd" />
                                             <asp:BoundField DataField="dagiticiSoyad" HeaderText="Soyad" SortExpression="dagiticiSoyad" />
                                             <asp:BoundField DataField="dagiticiTel" HeaderText="Telefon" SortExpression="dagiticiTel" />
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
                                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:KargoTakipSistemiConnectionString %>" SelectCommand="SELECT [dagiticiId], [dagiticiKimlikNo], [dagiticiAd], [dagiticiSoyad], [dagiticiTel] FROM [DagitimElemani]"></asp:SqlDataSource>
                                 </td >
                             </tr> 
                    </table>
        </div>
    </body>
</html>
</asp:Content>
