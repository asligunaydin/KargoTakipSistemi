<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Calisan.Master" AutoEventWireup="true" CodeBehind="Calisanlar.aspx.cs" Inherits="KargoTakipUygulaması.WebForm.Calisanlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Şube Çalışanları</title>
</head>
<body>
        <div>
            <h4>Şube Çalışanları</h4>
            <hr />
        </div>
        <div>
                    <table>
                            <tr>
                                 <td>
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="calisanId" DataSourceID="SqlDataSource3">
                                         <Columns>
                                             <asp:BoundField DataField="calisanId" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="calisanId" />
                                             <asp:BoundField DataField="kimlikNo" HeaderText="Kimlik No" SortExpression="kimlikNo" />
                                             <asp:BoundField DataField="calisanAd" HeaderText="Ad" SortExpression="calisanAd" />
                                             <asp:BoundField DataField="calisanSoyad" HeaderText="Soyad" SortExpression="calisanSoyad" />
                                             <asp:BoundField DataField="subeId" HeaderText="Şube No" SortExpression="subeId" />                                             
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
                                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:KargoTakipSistemiConnectionString %>" SelectCommand="SELECT [kimlikNo], [calisanAd], [calisanSoyad], [subeId], [calisanId] FROM [SubeCalisan]"></asp:SqlDataSource>
                                 </td >
                             </tr> 
                    </table>
        </div>
    </body>
</html>
</asp:Content>
