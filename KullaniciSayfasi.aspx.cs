using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KullaniciSayfasi : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();

        SqlCommand cmd = new SqlCommand("select ID,DersinKodu,DersAdi,DersinSinifi from AlinanDerslerr where OgrenciID=" + Session["OgrID"].ToString() + " ", baglanti);
        SqlDataReader dr = cmd.ExecuteReader();
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        Response.Write("Alınan Dersler Listelendi..");
        baglanti.Close();
    }
}