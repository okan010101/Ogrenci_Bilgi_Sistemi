using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class YoneticiDersEkle : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Insert into DersListesi(DersinKodu,DersinAdi,DersinSinifi) values(@kod,@ad,@sinif)", baglanti);
        cmd.Parameters.AddWithValue("kod", txtDersKodu.Text);
        cmd.Parameters.AddWithValue("ad", txtDersAdi.Text);
        cmd.Parameters.AddWithValue("sinif", txtDersSinif.Text);
        cmd.ExecuteNonQuery();
        Response.Write("Başarıyla Eklendi");
        baglanti.Close();
    }
}