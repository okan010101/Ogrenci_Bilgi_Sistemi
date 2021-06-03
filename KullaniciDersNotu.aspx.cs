using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;

public partial class KullaniciDersNotu : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {
        
       baglanti.Open();
       SqlCommand cmd = new SqlCommand("Select DersNotu.ID,DersNotuAdi,DersNotu.DersAdi,DersNotu.DersID,DersNotu.DersNotDokuman from DersListesi  INNER JOIN AlinanDerslerr  ON DersListesi.ID=AlinanDerslerr.DersID INNER JOIN DersNotu  ON AlinanDerslerr.DersID=DersNotu.DersID where AlinanDerslerr.OgrenciID=" + Session["OgrID"].ToString() + " ", baglanti);
       SqlDataReader dr = cmd.ExecuteReader();
       Repeater1.DataSource = dr;
       Repeater1.DataBind();
       Response.Write("Ders Notları Listelendi..");
        baglanti.Close();
        
       
    }
   
    
}