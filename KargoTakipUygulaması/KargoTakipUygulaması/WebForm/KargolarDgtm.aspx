<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dagitim.Master" AutoEventWireup="true" CodeBehind="KargolarDgtm.aspx.cs" Inherits="KargoTakipUygulaması.WebFormDagitim.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kargolar</title>
</head>
<body style="background-color: #0099FF">
        <div>
            <h4>Kargolar</h4>
            <hr />
        </div>
        <div>
                    <table>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kargoId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                        <Columns>
                                            <asp:BoundField DataField="kargoId" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="kargoId" />
                                            <asp:BoundField DataField="musteriId" HeaderText="Müşteri No" SortExpression="musteriId" />
                                            <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
                                            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Detay" ShowHeader="True" Text="Görüntüle" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KargoTakipSistemiConnectionString %>" SelectCommand="SELECT [kargoId], [musteriId], [adres], [teslimTarihi] FROM [Kargolar] WHERE (durum = 'Dağıtımda')">
                                        
                                    </asp:SqlDataSource>
                                 </td >
                             </tr> 
                    </table>
        </div>
    </body>
</html>
</asp:Content>
