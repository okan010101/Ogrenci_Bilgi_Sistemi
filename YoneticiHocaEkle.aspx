<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.master" AutoEventWireup="true" CodeFile="YoneticiHocaEkle.aspx.cs" Inherits="YoneticiHocaEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 111px">Hoca Adi :</td>
            <td style="width: 251px">
                <br />
                <asp:TextBox ID="txtHocaAdi" runat="server" Width="144px" CssClass="textbox" Height="20px"></asp:TextBox>
                *<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHocaAdi" ErrorMessage="Boş Geçilemez..."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td style="width: 111px; height: 26px;">Hoca Soyadi :</td>
            <td style="width: 251px; height: 26px;">
                <br />
                <asp:TextBox ID="txtHocaSoyadi" runat="server" Width="144px" CssClass="textbox" Height="20px"></asp:TextBox>
                *<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHocaSoyadi" ErrorMessage="Boş Geçilemez..."></asp:RequiredFieldValidator>
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 111px">Hoca Ünvanı :</td>
            <td style="width: 251px">
                <asp:DropDownList ID="DDLUnvan" runat="server" AutoPostBack="True" CssClass="textbox" Width="183px">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                    <asp:ListItem>Okt.</asp:ListItem>
                    <asp:ListItem>Yrd.Doç.Dr.</asp:ListItem>
                    <asp:ListItem>Prof.Dr.</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 25px"></td>
            <td style="width: 111px; height: 25px">Email :</td>
            <td style="height: 25px; width: 251px">
                <br />
                <asp:TextBox ID="txtEmail" runat="server" Width="144px" CssClass="textbox" Height="20px"></asp:TextBox>*<br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Lütfen doğru eposta adresi giriniz..." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 111px">Sifre :</td>
            <td style="width: 251px">
                <br />
                <asp:TextBox ID="txtSifre" runat="server" Width="144px" CssClass="textbox" Height="20px" TextMode="Password"></asp:TextBox>
                *<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez..." ControlToValidate="txtSifre"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 111px">Bölümü :</td>
            <td style="width: 251px">
                <asp:DropDownList ID="DDLBolum" runat="server" AutoPostBack="True" CssClass="textbox" Width="183px">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                    <asp:ListItem>Bilişim Sistemleri Mühendisliği</asp:ListItem>
                    <asp:ListItem>Enerji Sistemleri Mühendisliği</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 111px">&nbsp;</td>
            <td style="width: 251px">
                <asp:Button ID="btnKaydet" runat="server" Text="HOCA KAYDET" Width="181px" CssClass="myButton" OnClick="btnKaydet_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 111px">&nbsp;</td>
            <td style="width: 251px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

