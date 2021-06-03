using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HocaDersNotuPaylas : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGonder_Click(object sender, EventArgs e)
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
                
                SqlCommand cmd = new SqlCommand("Insert into DersNotu(DersNotuAdi,DersAdi,DersID,DersNotDokuman) values(@dersnot,@ad,@id,@dokuman)", baglanti);
                cmd.Parameters.AddWithValue("dersnot", txtDersNotuAdi.Text);
                cmd.Parameters.AddWithValue("ad", DDLDersAdi.Text);
                cmd.Parameters.AddWithValue("id", Session["ID"].ToString());
                cmd.Parameters.AddWithValue("dokuman", FileUpload1.FileName.ToString());
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
}