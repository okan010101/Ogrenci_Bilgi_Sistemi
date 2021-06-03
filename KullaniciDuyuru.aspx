<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciDuyuru.aspx.cs" Inherits="KullaniciDuyuru" %>

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
                            Ders Adı
                        </th>
                        <th><!-- www.aspnetornekleri.com  -->
                            Ders ID
                        </th>
                        <th>
                            Hoca Adı
                        </th>
                        <th>
                            Hoca Soyadı
                        </th>
                        <th>
                            Duyuru
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate> <!-- okunan bilgilerden hangileri nerde gösterilecek  -->
                <tr>
                    <td>
                    <%#DataBinder.Eval(Container.DataItem,"ID") %>
                        
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersID")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "HocaAdi")%>
                    </td><!-- www.aspnetornekleri.com  -->
                     <td>
                        <%#DataBinder.Eval(Container.DataItem, "HocaSoyadi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "Duyuru")%>
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

