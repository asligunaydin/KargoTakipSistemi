using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargoTakipUygulaması.WebForm
{
    public partial class KullaniciBilgileri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["musteriKimlikNo"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            int musteriId = Convert.ToInt16(Session["musteriId"]);

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * from Musteriler where musteriId=musteriId", baglanti);
            cmd.Parameters.AddWithValue("@musteriId", musteriId);
            baglanti.Open();
            SqlDataReader listt = cmd.ExecuteReader();
            if (listt.HasRows)
            {
                while (listt.Read())
                {
                    txtkimlikNo.Text = listt["musteriKimlikNo"].ToString();
                    txtSifre.Text = listt["sifre"].ToString();
                    txtAd.Text = listt["musteriAd"].ToString();
                    txtSoyad.Text = listt["musteriSoyad"].ToString();
                    txtTel.Text = listt["musteriTel"].ToString();
                    txtAdres.Text = listt["adres"].ToString();

                }
            }
            cmd.Dispose();
            listt.Close();

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string kimlikNo = txtkimlikNo.Text;
            string sifre = txtSifre.Text;
            string ad = txtAd.Text;
            string soyad = txtSoyad.Text;
            string telefon = txtTel.Text;
            string adres = txtAdres.Text;
            int id = 0;

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Update Musteriler " +
                "Set musteriKimlikNo=@kimlikNo, sifre=@sifre, musteriAd=@ad, musteriSoyad=@soyad,musteriTel=@telefon,musteriSoyad=@adres", baglanti);
            cmd.Parameters.AddWithValue("@kimlikNo", kimlikNo);
            cmd.Parameters.AddWithValue("@sifre", sifre);
            cmd.Parameters.AddWithValue("@musteriAd", ad);
            cmd.Parameters.AddWithValue("@musteriSoyad", soyad);
            cmd.Parameters.AddWithValue("@telefon", telefon);
            cmd.Parameters.AddWithValue("@adres", adres);
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("KullaniciBilgileri.aspx");
        }
    }
}