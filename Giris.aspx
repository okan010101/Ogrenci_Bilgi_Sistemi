<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Giris.aspx.cs" Inherits="Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-2.2.3.js"></script>
    <link href="css/logincss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
	<h1>Login</h1>
    <form method="post">
        <a style="color:#FFF;">Email</a><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Doğru mail adresi giriniz" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <a style="color:#FFF;">Şifre</a><asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button CssClass="btn btn-primary btn-block btn-large" ID="Button1" runat="server" Text="GİRİS" OnClick="Button1_Click" />
        <p><a href="OgrenciKayit.aspx" target="_blank" style="color:#FFF;">Öğrenci kaydı için tıklayınız...</a></p>
    </form>
</div>
    </form>
</body>
</html>
