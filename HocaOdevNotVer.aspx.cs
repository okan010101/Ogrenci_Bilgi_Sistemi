using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HocaOdevNotVer : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-JGE5D3Q\SQLEXPRESS;Integrated Security=TRUE;Initial Catalog=vt;");
    protected void Page_Load(object sender, EventArgs e)
    {
       

        SqlCommand cmd = new SqlCommand("Select * from OdevNotu ", baglanti);
        baglanti.Open();

        Repeater1.DataSource = cmd.ExecuteReader();
        Repeater1.DataBind();
        baglanti.Close();
    }
    protected void btnNotVer_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand cmd = new SqlCommand("Update OdevNotu set OgrenciNotu='"+txtOdevNot.Text+"'where OgrenciID='"+txtOgrenciID.Text+"' ",baglanti);
        cmd.ExecuteNonQuery();
        Response.Write("Not Verildi...");
        baglanti.Close();
    }
}