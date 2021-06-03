using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class KullaniciDersSec : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDersSec_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Select ID from DersListesi where DersinAdi='"+DDLDersAdi.Text+"'",baglanti);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Session["DersID"] = reader["ID"].ToString();
        }
        reader.Close();
        
        SqlCommand kmt = new SqlCommand("Insert into AlinanDerslerr(DersinKodu,DersAdi,DersinSinifi,DersID,OgrenciID) values (@kod,@dad,@sinif,@did,@ogrid)",baglanti);
        kmt.Parameters.AddWithValue("kod", DDLDersKodu.Text);
        kmt.Parameters.AddWithValue("dad", DDLDersAdi.Text);
        kmt.Parameters.AddWithValue("sinif", DDLDersSinifi.Text);
        kmt.Parameters.AddWithValue("did",Session["DersID"].ToString());
        kmt.Parameters.AddWithValue("ogrid", Session["OgrID"].ToString());
        kmt.ExecuteNonQuery();
        Response.Write("Ders Verildi...");
        baglanti.Close();
    }
}