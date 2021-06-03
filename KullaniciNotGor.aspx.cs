using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class KullaniciNotGor : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();

        SqlCommand cmd = new SqlCommand("select ID,OdevinAdi,DersinAdi,OgrenciNotu from OdevNotu where OgrenciID=" + Session["OgrID"].ToString() + " ", baglanti);
        SqlDataReader dr = cmd.ExecuteReader();
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        Response.Write("Not Listelendi..");
        baglanti.Close();
    }
}