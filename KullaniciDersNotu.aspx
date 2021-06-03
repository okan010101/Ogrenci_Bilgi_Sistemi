<%@ Page Title="" Language="C#" MasterPageFile="~/Kalip.master" AutoEventWireup="true" CodeFile="KullaniciDersNotu.aspx.cs" Inherits="KullaniciDersNotu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>
                &nbsp;</td>
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
                            Ders Notu Adı
                        </th>
                        <th><!-- www.aspnetornekleri.com  -->
                            Ders Adi
                        </th>
                        <th>
                            Ders ID
                        </th>
                        <th>
                            Ders Notu Dökümanı
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate> <!-- okunan bilgilerden hangileri nerde gösterilecek  -->
                <tr>
                    <td>
                    <%#DataBinder.Eval(Container.DataItem,"ID") %>
                        
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersNotuAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersID")%>
                    </td><!-- www.aspnetornekleri.com  -->
                     <td>
             <a href="Dosyalar/<%#Eval("DersNotDokuman") %>">      <%#Eval("DersNotDokuman") %></a> 
                    </td>
                    
                    
                </tr>
            </ItemTemplate>
            
            <SeparatorTemplate> <!-- kayıtlar arasında çizgi  -->
                <tr>
                    <td colspan="5">
                        <hr>
                    </td>
                </tr>
            </SeparatorTemplate>
            <FooterTemplate><!-- son satırda tabloyu kapayıyoruz  -->
                </table>
            </FooterTemplate>
        </asp:Repeater>
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

