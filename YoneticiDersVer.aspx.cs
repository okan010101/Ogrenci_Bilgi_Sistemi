using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class YoneticiDersVer : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnVer_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Select ID from HocaKullanici where HocaAdi='" + txtHocaAdi.Text + "'", baglanti);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["ID"] = dr["ID"].ToString();
        }
        dr.Close();
        SqlCommand kmt = new SqlCommand("Update DersListesi set HocaID='"+Session["ID"].ToString()+"' where DersinAdi='"+DDLDersAdi.Text+"'", baglanti);
        kmt.ExecuteNonQuery();
        Response.Write("Ders Verildi...");
        baglanti.Close();

    }
}