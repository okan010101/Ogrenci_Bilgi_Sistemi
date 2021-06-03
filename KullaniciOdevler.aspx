<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciOdevler.aspx.cs" Inherits="KullaniciOdevler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 534px;">
                <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate><!-- görüntülenecek bilgilerin başlıkları  -->
                <table border="1" >
                    <tr>
                        <th>
                            ID
                        </th>
                        <th>
                            Ödevin Adı
                        </th>
                        <th><!-- www.aspnetornekleri.com  -->
                            Teslim Tarihi
                        </th>
                        <th>
                            Ders Adi
                        </th>
                        <th>
                            Ders ID
                        </th>
                        <th>
                            Ödev Dosyası
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate> <!-- okunan bilgilerden hangileri nerde gösterilecek  -->
                <tr>
                    <td>
                    <%#DataBinder.Eval(Container.DataItem,"ID") %>
                        
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "OdevinAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "TeslimTarihi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersAdi")%>
                    </td><!-- www.aspnetornekleri.com  -->
                     <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersID")%>
                    </td>
                    <td>
                       <a href="/Dosyalar/<%#DataBinder.Eval(Container.DataItem, "OdevDosyasi")%>"> <%#DataBinder.Eval(Container.DataItem, "OdevDosyasi")%></a>
                    </td>
                </tr>
            </ItemTemplate>
            
            <SeparatorTemplate> <!-- kayıtlar arasında çizgi  -->
                <tr>
                    <td colspan="6">
                        <hr>
                    </td>
                </tr>
            </SeparatorTemplate>
            <FooterTemplate><!-- son satırda tabloyu kapayıyoruz  -->
                </table>
            </FooterTemplate>
        </asp:Repeater><!-- www.aspnetornekleri.com  -->
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

