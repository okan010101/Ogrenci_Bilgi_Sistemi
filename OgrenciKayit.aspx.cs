using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class OgrenciKayit : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        baglanti.Open();

        
            SqlCommand cmd = new SqlCommand("Insert into OgrenciKullanici(Adi,Soyadi,Bolum,Sinif,OgrNo,Email,Sifre) values(@ad,@soyad,@bolum,@sinif,@ogrno,@email,@sifre)",baglanti);
            cmd.Parameters.AddWithValue("ad", txtAd.Text);
            cmd.Parameters.AddWithValue("soyad", txtSoyad.Text);
            cmd.Parameters.AddWithValue("bolum", txtBolum.Text);
            cmd.Parameters.AddWithValue("sinif", txtSinif.Text);
            cmd.Parameters.AddWithValue("ogrno", txtOgrNo.Text);
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            cmd.Parameters.AddWithValue("sifre", txtSifre.Text);
            cmd.ExecuteNonQuery();

            Response.Write("Başarıyla Eklendi...");
        
        baglanti.Close();
    }
}