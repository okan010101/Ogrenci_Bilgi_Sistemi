<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.master" AutoEventWireup="true" CodeFile="YoneticiDersVer.aspx.cs" Inherits="YoneticiDersVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 83px">Dersin Adi:</td>
            <td>
                <asp:DropDownList CssClass="textbox" ID="DDLDersAdi" runat="server" Height="16px" Width="185px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DersinAdi" DataValueField="DersinAdi">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinAdi] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 83px">Hocanin Adi :</td>
            <td>
                <asp:TextBox CssClass="textbox" ID="txtHocaAdi" runat="server" Width="144px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 83px">&nbsp;</td>
            <td>
                <asp:Button CssClass="myButton" ID="btnVer" runat="server" Text="DERS VER" Width="183px" OnClick="btnVer_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 83px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 83px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

