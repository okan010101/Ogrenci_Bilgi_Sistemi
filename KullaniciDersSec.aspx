<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciDersSec.aspx.cs" Inherits="KullaniciDersSec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 123px">Dersin Kodu :</td>
            <td style="width: 156px">
                <asp:DropDownList ID="DDLDersKodu" runat="server" CssClass="textbox"  Width="159px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DersinKodu" DataValueField="DersinKodu">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinKodu] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 207px;"></td>
            <td style="width: 123px; height: 26px">Dersin Adi :</td>
            <td style="width: 156px; height: 26px">
                <asp:DropDownList CssClass="textbox" ID="DDLDersAdi" runat="server" Width="159px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="DersinAdi" DataValueField="DersinAdi">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinAdi] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 123px">Dersin Sınıfı :</td>
            <td style="width: 156px">
                <asp:DropDownList ID="DDLDersSinifi" runat="server" AutoPostBack="True" CssClass="textbox" Width="159px">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 156px">
                <asp:Button CssClass="myButton" ID="btnDersSec" runat="server" Text="DERS SEÇ" Width="160px" OnClick="btnDersSec_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

