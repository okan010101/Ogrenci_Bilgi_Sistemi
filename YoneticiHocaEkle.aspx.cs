using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class YoneticiHocaEkle : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Insert into HocaKullanici(HocaAdi,HocaSoyadi,HocaUnvan,Email,Sifre,Bolum) values (@ad,@soyad,@unvan,@email,@sifre,@bolum)",baglanti);
        cmd.Parameters.AddWithValue("ad", txtHocaAdi.Text);
        cmd.Parameters.AddWithValue("soyad", txtHocaSoyadi.Text);
        cmd.Parameters.AddWithValue("unvan", DDLUnvan.Text);
        cmd.Parameters.AddWithValue("email", txtEmail.Text);
        cmd.Parameters.AddWithValue("sifre", txtSifre.Text);
        cmd.Parameters.AddWithValue("bolum", DDLBolum.Text);
        cmd.ExecuteNonQuery();
        Response.Write("Başarıyla Eklendi.");
        baglanti.Close();
    }
}