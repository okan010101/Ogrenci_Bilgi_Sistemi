using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class KullaniciDuyuru : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();

        SqlCommand cmd = new SqlCommand("select Duyuru.ID,Duyuru.DersAdi,Duyuru.DersID,Duyuru.HocaAdi,Duyuru.HocaSoyadi,Duyuru.Duyuru from DersListesi INNER JOIN AlinanDerslerr ON DersListesi.ID=AlinanDerslerr.DersID INNER JOIN Duyuru ON AlinanDerslerr.DersID=Duyuru.DersID where AlinanDerslerr.OgrenciID=" + Session["OgrID"].ToString() + " ", baglanti);
       SqlDataReader dr = cmd.ExecuteReader();
       Repeater1.DataSource = dr;
       Repeater1.DataBind();
       Response.Write("Duyurular Listelendi..");
        baglanti.Close();
    }
}