<%@ Page Title="" Language="C#" MasterPageFile="~/HocaAnasayfa.master" AutoEventWireup="true" CodeFile="HocaOdevPaylas.aspx.cs" Inherits="HocaOdevPaylas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">Ödevin Adı :</td>
            <td style="width: 289px">
                <asp:TextBox ID="txtOdevAdi" runat="server" CssClass="textbox" Height="20px" Width="128px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">Teslim Tarihi :</td>
            <td style="width: 289px">
                <asp:TextBox ID="txtTeslimTarih" runat="server" CssClass="textbox" Height="20px" Width="130px" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">Ders adı :</td>
            <td style="width: 289px">
                <asp:DropDownList ID="DDLDersAdi" runat="server" AutoPostBack="True" CssClass="textbox" DataSourceID="SqlDataSource1" DataTextField="DersinAdi" DataValueField="DersinAdi" Width="171px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Initial Catalog=vt;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [DersinAdi] FROM [DersListesi]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">Ödev Dosyası :</td>
            <td style="width: 289px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="257px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 106px">&nbsp;</td>
            <td style="width: 289px">
                <asp:Button ID="btnPaylas" runat="server" CssClass="myButton" Text="PAYLAŞ" Width="168px" OnClick="btnPaylas_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

