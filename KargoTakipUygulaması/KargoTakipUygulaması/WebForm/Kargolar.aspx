<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Calisan.Master" AutoEventWireup="true" CodeBehind="Kargolar.aspx.cs" Inherits="KargoTakipUygulaması.WebForm.Kargolar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kargolar</title>
</head>
<body>
        <div>
            <h4>Kargolar</h4>
            <hr />
        </div>
        <div>
                    <table>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="kargoId" DataSourceID="SqlDataSource5">
                                        <Columns>
                                            <asp:BoundField DataField="kargoId" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="kargoId" />
                                            <asp:BoundField DataField="durum" HeaderText="Durum" SortExpression="durum" />
                                            <asp:BoundField DataField="musteriId" HeaderText="Müşteri" SortExpression="musteriId" />
                                            <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
                                            <asp:BoundField DataField="teslimTarihi" HeaderText="Teslm Tarihi" SortExpression="teslimTarihi" />
                                            <asp:BoundField DataField="subeId" HeaderText="Sube" SortExpression="subeId" />
                                            <asp:BoundField DataField="sorumluId" HeaderText="Sorumlu" SortExpression="sorumluId" />
                                            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Güncelle" ShowHeader="True" Text="Görüntüle" />
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
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:KargoTakipSistemiConnectionString %>" SelectCommand="SELECT [kargoId], [durum], [musteriId], [adres], [teslimTarihi], [subeId], [sorumluId] FROM [Kargolar]"></asp:SqlDataSource>
                                 </td >
                             </tr> 
                    </table>
        </div>
    </body>
</html>
</asp:Content>
