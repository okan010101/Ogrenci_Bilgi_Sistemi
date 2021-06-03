<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciNotGor.aspx.cs" Inherits="KullaniciNotGor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
     <table style="width: 100%">
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 386px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 386px;">
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
                            Dersin Adı
                        </th>
                        <th>
                            Öğrenci Notu
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
                        <%#DataBinder.Eval(Container.DataItem, "DersinAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "OgrenciNotu")%>
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
            <td style="width:250px;">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 386px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

