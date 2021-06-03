<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.master" AutoEventWireup="true" CodeFile="YoneticiDersEkle.aspx.cs" Inherits="YoneticiDersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 98px">Dersin Kodu:</td>
        <td>
            <asp:TextBox CssClass="textbox" ID="txtDersKodu" runat="server" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 98px">Dersin Adı :</td>
        <td>
            <asp:TextBox CssClass="textbox" ID="txtDersAdi" runat="server" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 98px">Dersin Sınıfı :</td>
        <td>
            <asp:TextBox CssClass="textbox" ID="txtDersSinif" runat="server" Width="144px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 98px">&nbsp;</td>
        <td>
        <!--<a href="#" class="myButton">dark grey</a>-->
            <asp:Button CssClass="myButton" ID="btnEkle" runat="server" Text="EKLE" Width="184px" OnClick="btnEkle_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 143px; height: 24px;"></td>
        <td style="width: 98px; height: 24px;"></td>
        <td style="height: 24px"></td>
        <td style="height: 24px"></td>
    </tr>
</table>
</asp:Content>

