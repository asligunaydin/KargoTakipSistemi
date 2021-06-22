<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Kullanici.Master" AutoEventWireup="true" CodeBehind="KullaniciBilgileri.aspx.cs" Inherits="KargoTakipUygulaması.WebForm.KullaniciBilgileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kullanıcı Bilgileri</title>
</head>
<body>
        <div>
            <h4>Kullanıcı Bilgileri</h4>
            <hr />
        </div>
        <div>
                    <table>
          <div>
            <tr>
                <td colspan="2" style="text-align:center">
                </td>
            </tr>
            <tr>
                <td>Kimlik No:</td>
                <td>
                    <asp:TextBox ID="txtkimlikNo" runat="server" CssClass="textBox"></asp:TextBox>                                                        
                </td>
            </tr>
             <tr>
                <td>Şifre</td>
                <td>
                    <asp:TextBox ID="txtSifre" runat="server" CssClass="textBox" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"                             
                            ControlToValidate="txtSifre" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Ad</td>
                <td>
                    <asp:TextBox id="txtAd" runat="server" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"                             
                            ControlToValidate="txtAd" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Soyad</td>
                <td>
                    <asp:TextBox id="txtSoyad" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"                             
                            ControlToValidate="txtSoyad" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Telefon</td>
                <td>
                    <asp:TextBox id="txtTel" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"                             
                            ControlToValidate="txtTel" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Adres</td>
                <td>
                    <asp:TextBox id="txtAdres" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"                             
                            ControlToValidate="txtAdres" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr
                <td colspan="2">
                    <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" />
                              
                </td>
            </tr>
        </div>
                    </table>
            </div>
    </body>
</html>
                        
</asp:Content>
