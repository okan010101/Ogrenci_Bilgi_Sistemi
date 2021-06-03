<%@ Page Title="" Language="C#" MasterPageFile="~/HocaAnasayfa.master" AutoEventWireup="true" CodeFile="HocaDuyuruPaylas.aspx.cs" Inherits="HocaDuyuruPaylas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 104px">Ders Adı :</td>
            <td style="width: 308px">
                <asp:DropDownList ID="DDLDersAdi" runat="server" AutoPostBack="True" CssClass="textbox" DataSourceID="SqlDataSource1" DataTextField="DersinAdi" DataValueField="DersinAdi" Width="230px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinAdi] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 104px">Hoca Adı :</td>
            <td style="width: 308px">
                <asp:TextBox ID="txtHocaAdi" runat="server" CssClass="textbox" Height="20px" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 104px">Hoca Soyadı :</td>
            <td style="width: 308px">
                <asp:TextBox ID="txtHocaSoyadi" runat="server" CssClass="textbox" Height="20px" Width="183px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 104px">Duyuru :</td>
            <td style="width: 308px">
                <asp:TextBox ID="txtDuyuru" runat="server" CssClass="textbox" Height="50px" TextMode="MultiLine" Width="265px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 104px">&nbsp;</td>
            <td style="width: 308px">
                <asp:Button ID="btnPaylas" runat="server" CssClass="myButton" Text="PAYLAŞ" Width="225px" OnClick="btnPaylas_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

