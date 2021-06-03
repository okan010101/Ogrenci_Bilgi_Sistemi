using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Giris : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlDataReader dr;
    SqlDataReader dr1;
    SqlDataReader dr2;
    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmdalogr = new SqlCommand("Select ID from OgrenciKullanici where Email='" + txtEmail.Text + "'and Sifre='" + txtSifre.Text + "'", baglanti);
        SqlDataReader reader = cmdalogr.ExecuteReader();
        if (reader.Read())
        {
            Session["OgrID"] = reader["ID"].ToString();
        }
        reader.Close();
        SqlCommand cmd = new SqlCommand("Select Email,Sifre from OgrenciKullanici where Email='"+txtEmail.Text+"'and Sifre='"+txtSifre.Text+"'",baglanti); 
        dr = cmd.ExecuteReader();

        if(dr.Read())
        {

            if (dr["Email"].ToString() == txtEmail.Text && dr["Sifre"].ToString() == txtSifre.Text)
            {
                Response.Redirect("KullaniciSayfasi.aspx");
            }
      
        }
        dr.Close();
        SqlCommand kmt = new SqlCommand("Select Email,Sifre from HocaKullanici where Email='" + txtEmail.Text + "' and Sifre='" + txtSifre.Text + "'", baglanti);
        dr1 = kmt.ExecuteReader();
        if (dr1.Read())
        {
            if (dr1["Email"].ToString() == txtEmail.Text && dr1["Sifre"].ToString() == txtSifre.Text)
            {
                Response.Redirect("Hoca.aspx");
            }
        }
        dr1.Close();
        SqlCommand komut = new SqlCommand("Select Email,Sifre from Admin where Email='" + txtEmail.Text + "'and Sifre='" + txtSifre.Text + "'", baglanti);
        dr2 = komut.ExecuteReader();
        if (dr2.Read())
        {
             if (dr2["Email"].ToString() == txtEmail.Text && dr2["Sifre"].ToString() == txtSifre.Text)
            {
                Response.Redirect("Yonetici.aspx");
            }
        }
        dr2.Close();
        baglanti.Close();
    }
}