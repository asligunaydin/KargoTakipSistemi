<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Calisan.Master" AutoEventWireup="true" CodeBehind="KargoEkle.aspx.cs" Inherits="KargoTakipUygulaması.WebForm.KargoEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kargo Ekle</title>
</head>
<body>
        <table>
          <div>
            <tr>
                <td colspan="2" style="text-align:center">
                    <h3>Kargo Kayıt Alanı</h3>
                </td>
            </tr>
            <tr>
                <td>Durum: </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Şubede</asp:ListItem>
                        <asp:ListItem>Dağıtımda</asp:ListItem>
                        <asp:ListItem>Teslim Edildi</asp:ListItem>
                    </asp:DropDownList>              
                </td>
            </tr>
            <tr>
                <td>Müşteri ID:</td>
                <td>
                    <asp:TextBox ID="txtmusteriID" runat="server" CssClass="textBox"></asp:TextBox>                                                        
                </td>
            </tr>
             <tr>
                <td>Adres:</td>
                <td>
                    <asp:TextBox ID="txtAdres" runat="server" CssClass="textBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"                             
                            ControlToValidate="txtAdres" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Teslim Tarihi</td>
                <td>
                    <asp:TextBox id="txtTarih" runat="server" TextMode="Date" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"                             
                            ControlToValidate="txtTarih" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Sorumlu ID</td>
                <td>
                    <asp:TextBox id="txtSorumlu" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"                             
                            ControlToValidate="txtSorumlu" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Şube ID</td>
                <td>
                    <asp:TextBox id="txtSubeID" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"                             
                            ControlToValidate="txtSubeID" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" />
                              
                </td>
            </tr>
        </div>
      </table>

</body>
</html>
</asp:Content>
