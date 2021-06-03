using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HocaDuyuruPaylas : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPaylas_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Select ID from DersListesi where DersinAdi='" + DDLDersAdi.Text + "'", baglanti);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["ID"] = dr["ID"].ToString();
        }
        dr.Close();
        SqlCommand kmt = new SqlCommand("Insert into Duyuru(DersAdi,DersID,HocaAdi,HocaSoyadi,Duyuru) values (@dersad,@id,@had,@hsoyad,@duyuru)",baglanti);
        kmt.Parameters.AddWithValue("dersad", DDLDersAdi.Text);
        kmt.Parameters.AddWithValue("id", Session["ID"].ToString());
        kmt.Parameters.AddWithValue("had", txtHocaAdi.Text);
        kmt.Parameters.AddWithValue("hsoyad", txtHocaSoyadi.Text);
        kmt.Parameters.AddWithValue("duyuru", txtDuyuru.Text);
        kmt.ExecuteNonQuery();
        Response.Write("Duyuru Paylaşıldı...");
        baglanti.Close();
    }
}