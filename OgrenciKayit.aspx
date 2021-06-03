<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OgrenciKayit.aspx.cs" Inherits="OgrenciKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style1.css" rel="stylesheet" />
    <script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
   <form id="Form1" class="sign-up" runat="server">
     
    <h1 class="sign-up-title">Öğrenci Kayıt</h1>
    Adınız<asp:TextBox CssClass="sign-up-input" ID="txtAd" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtAd"></asp:RequiredFieldValidator>
       <br />
    Soyadınız<asp:TextBox CssClass="sign-up-input" ID="txtSoyad" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoyad" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
       <br />
    Bölümünüz<asp:TextBox CssClass="sign-up-input" ID="txtBolum" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBolum" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
       <br />
    Sınıf<asp:TextBox CssClass="sign-up-input" ID="txtSinif" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSinif" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
       <br />
    Öğrenci Numaranız<asp:TextBox CssClass="sign-up-input" ID="txtOgrNo" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOgrNo" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
       <br />
    Email<asp:TextBox CssClass="sign-up-input" ID="txtEmail" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Doğru mail adresi giriniz." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       <br />
    Şifre<asp:TextBox CssClass="sign-up-input" ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox> 
       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSifre" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
       <br />
   <asp:Button CssClass="sign-up-button" ID="btnKaydet" runat="server" Text="KAYDET" OnClick="btnKaydet_Click" />
  </form>
</body>
</html>
