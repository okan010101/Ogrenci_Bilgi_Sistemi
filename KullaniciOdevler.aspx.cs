using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class KullaniciOdevler : System.Web.UI.Page
{ 
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

        baglanti.Open();

        SqlCommand cmd = new SqlCommand("select Odev.ID,Odev.OdevinAdi,Odev.TeslimTarihi,Odev.DersAdi,Odev.DersID,Odev.OdevDosyasi from DersListesi INNER JOIN AlinanDerslerr ON DersListesi.ID=AlinanDerslerr.DersID INNER JOIN Odev ON AlinanDerslerr.DersID=Odev.DersID where AlinanDerslerr.OgrenciID=" + Session["OgrID"].ToString() + " ", baglanti);
        SqlDataReader dr = cmd.ExecuteReader();
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        Response.Write("Duyurular Listelendi..");
        baglanti.Close();
    }
}