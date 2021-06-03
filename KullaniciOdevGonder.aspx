<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciOdevGonder.aspx.cs" Inherits="KullaniciOdevGonder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 131px">Ödevin Adi :</td>
            <td style="width: 386px">
                <asp:TextBox ID="txtOdevAdi" runat="server" Width="150px" CssClass="textbox"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px; height: 24px"></td>
            <td style="width: 131px; height: 24px">Dersin Adı :</td>
            <td style="width: 386px; height: 24px">
                <asp:DropDownList ID="DDLDersAdi" runat="server" DataSourceID="SqlDataSource1" DataTextField="DersinAdi" DataValueField="DersinAdi" Width="190px" CssClass="textbox">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinAdi] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td style="width: 386px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 131px">Ödev Dosyası :</td>
            <td style="width: 386px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="278px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 179px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td style="width: 386px">
                <asp:Button ID="btnGonder" runat="server" CssClass="myButton" Text="GÖNDER" Width="189px" OnClick="btnGonder_Click" />
                <asp:Button ID="btnGor" runat="server" CssClass="myButton" OnClick="btnGor_Click" Text="Not Gör" Width="189px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

