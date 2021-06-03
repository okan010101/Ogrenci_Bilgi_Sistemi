<%@ Page Title="" Language="C#" MasterPageFile="~/HocaAnasayfa.master" AutoEventWireup="true" CodeFile="HocaOdevNotVer.aspx.cs" Inherits="HocaOdevNotVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="icerik" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 94px">&nbsp;</td>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 94px">&nbsp;</td>
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
                            Dersin Adı
                        </th>
                        <th>
                            Öğrenci ID
                        </th>
                        <th>
                            Teslim Tarihi
                        </th>
                        <th>
                            Öğrenci Notu
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
                        <%#DataBinder.Eval(Container.DataItem, "DersinAdi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "OgrenciID")%>
                    </td><!-- www.aspnetornekleri.com  -->
                     <td>
                        <%#DataBinder.Eval(Container.DataItem, "TeslimTarihi")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "OgrenciNotu")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container.DataItem, "DersID")%>
                    </td>
                    <td>
                        <a href="Dosyalar/<%#Eval("OdevDosyasi") %>">      <%#Eval("OdevDosyasi") %></a> 
                    </td>
                </tr>
            </ItemTemplate>
            
            <SeparatorTemplate> <!-- kayıtlar arasında çizgi  -->
                <tr>
                    <td colspan="8">
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
            <td style="width: 94px">Öğrenci ID:</td>
            <td style="width: 534px;">
                <asp:TextBox ID="txtOgrenciID" runat="server" CssClass="textbox" Width="188px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 94px">Ödev Notu :</td>
            <td style="width: 534px">
                <asp:TextBox ID="txtOdevNot" runat="server" CssClass="textbox" Height="25px" Width="188px"></asp:TextBox>
                <asp:Button ID="btnNotVer" runat="server" CssClass="myButton" Text="NOT VER" OnClick="btnNotVer_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

