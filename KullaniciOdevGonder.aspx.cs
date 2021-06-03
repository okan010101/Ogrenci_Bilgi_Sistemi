using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KullaniciOdevGonder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    void OdevGonder()
    {



        baglanti.Open();
        SqlCommand kmt = new SqlCommand("Select ID from DersListesi where DersinAdi='" + DDLDersAdi.Text + "'", baglanti);
        SqlDataReader dr = kmt.ExecuteReader();
        if (dr.Read())
        {
            Session["ID"] = dr["ID"].ToString();
        }
        dr.Close();
        if (FileUpload1.HasFile)
        {
            try
            {
                FileUpload1.SaveAs(Request.PhysicalApplicationPath + "Dosyalar//" + FileUpload1.FileName);

                SqlCommand cmd = new SqlCommand("Insert into OdevNotu values(@odevad,@ad,@id,@teslimtarihi,@dosya,@not,@DID)", baglanti);
                cmd.Parameters.AddWithValue("odevad", txtOdevAdi.Text);
                cmd.Parameters.AddWithValue("ad", DDLDersAdi.Text);
                cmd.Parameters.AddWithValue("id", Session["OgrID"].ToString());
                cmd.Parameters.AddWithValue("dosya", FileUpload1.FileName.ToString());
                cmd.Parameters.AddWithValue("teslimtarihi", DateTime.Now.ToLongDateString().ToString());
                cmd.Parameters.AddWithValue("not","0");
                cmd.Parameters.AddWithValue("DID",Session["ID"]);
                cmd.ExecuteNonQuery();
                Response.Write("Dosya Yüklendi...");
                baglanti.Close();
            }
            catch (Exception ex)
            {

                Response.Write("Hata Oluştu." + ex.Message.ToString());
            }
        }
        else
        {
            Response.Write("Dosya seçin ve yükleyin...");
        }
    
    
    
    
    
    
    }
    protected void btnGonder_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Select ID from DersListesi where DersinAdi='" + DDLDersAdi.Text + "'", baglanti);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["ID"] = dr["ID"].ToString();
        }
        dr.Close();
        SqlCommand komut = new SqlCommand("Select TeslimTarihi from Odev where DersID='"+Session["ID"].ToString()+"'", baglanti);
        SqlDataReader reader = komut.ExecuteReader();
        if (reader.Read())
        {
            Session["TeslimTar"] = reader["TeslimTarihi"].ToString();
        }
        reader.Close();
        baglanti.Close();
        DateTime OdevTarih = Convert.ToDateTime(Session["TeslimTar"].ToString());
        DateTime gonderilenTarih =DateTime.Now;
        TimeSpan arasindakifark = OdevTarih - gonderilenTarih;
        double days = arasindakifark.TotalDays;

        if (days>=0)
        {
            OdevGonder(); 
        }
        else
        {
            Response.Write("Teslim Tarihi kaçırdınız...");
        }
    }
    protected void btnGor_Click(object sender, EventArgs e)
    {
        Response.Redirect("KullaniciNotGor.aspx");
    }
}