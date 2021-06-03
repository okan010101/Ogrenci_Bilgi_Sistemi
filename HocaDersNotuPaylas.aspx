<%@ Page Title="" Language="C#" MasterPageFile="~/HocaAnasayfa.master" AutoEventWireup="true" CodeFile="HocaDersNotuPaylas.aspx.cs" Inherits="HocaDersNotuPaylas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 131px">Ders Notu Adı :</td>
            <td style="width: 356px">
                <asp:TextBox CssClass="textbox" ID="txtDersNotuAdi" runat="server" Height="20px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 131px">Ders Adı :</td>
            <td style="width: 356px">
                <asp:DropDownList CssClass="textbox" ID="DDLDersAdi" runat="server"  Width="162px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DersinAdi" DataValueField="DersinAdi">
                    <asp:ListItem>Seçiniz...</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinAdi] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 131px">Ödev Dosyası :</td>
            <td style="width: 356px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="248px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td style="width: 356px">
                <asp:Button CssClass="myButton" ID="btnGonder" runat="server" Text="GONDER" Width="162px" OnClick="btnGonder_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

