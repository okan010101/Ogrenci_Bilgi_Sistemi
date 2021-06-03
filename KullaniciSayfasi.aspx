<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciSayfasi.aspx.cs" Inherits="KullaniciSayfasi" %>


<asp:Content ID="Content2" ContentPlaceHolderID="icerik" Runat="Server">
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
                            Dersin Kodu
                        </th>
                        <th><!-- www.aspnetornekleri.com  -->
                            Dersin Adı
                        </th>
                        <th>
                            Dersin Sınıfı
                        </th>
                        
                    </tr>
            </HeaderTemplate>
            <ItemTemplate> <!-- okunan bilgilerden hangileri nerde gösterilecek  -->
                <tr>
                    <td>
                    <%#DataBinder.Eval(Container.DataItem,"ID") %>
                        
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersinKodu")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersinSinifi")%>
                    </td><!-- www.aspnetornekleri.com  -->
                    
                </tr>
            </ItemTemplate>
            
            <SeparatorTemplate> <!-- kayıtlar arasında çizgi  -->
                <tr>
                    <td colspan="4">
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



