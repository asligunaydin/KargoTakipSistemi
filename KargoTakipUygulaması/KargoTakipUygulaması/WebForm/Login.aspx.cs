using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargoTakipUygulaması.WebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kimlikNo = textboxKimlik.Text;
            string sifre = textboxSifre.Text;

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);

            if (RadioButton1.Checked)
            {
                SqlCommand cmd = new SqlCommand("Select * from SubeCalisan where kimlikNo=@kimlikNo AND calisanSifre=@calisanSifre", baglanti);

                cmd.Parameters.AddWithValue("@kimlikNo", kimlikNo);
                cmd.Parameters.AddWithValue("@calisanSifre", sifre);
                baglanti.Open();
                SqlDataReader listt = cmd.ExecuteReader();
                if (listt.HasRows)
                {
                    while (listt.Read())
                    {
                        Session["kimlikNo"] = listt["kimlikNo"];
                        Response.Redirect("Subeler.aspx");

                    }
                }
                else
                {
                    label1.Text = "Hatalı Giriş!!! Tekrar Deneyiniz.";
                }
                cmd.Dispose();
                listt.Close();
            }
            else if (RadioButton2.Checked)
            {
                SqlCommand cmd = new SqlCommand("Select * from DagitimElemani where dagiticiKimlikNo=@dagiticiKimlikNo AND dagiticiSifre=@dagiticiSifre", baglanti);

                cmd.Parameters.AddWithValue("@dagiticiKimlikNo", kimlikNo);
                cmd.Parameters.AddWithValue("@dagiticiSifre", sifre);
                baglanti.Open();
                SqlDataReader listt = cmd.ExecuteReader();
                if (listt.HasRows)
                {
                    while (listt.Read())
                    {
                        Session["dagiticiKimlikNo"] = listt["dagiticiKimlikNo"];
                        Response.Redirect("KargolarDgtm.aspx");

                    }
                }
                else
                {
                    label1.Text = "Hatalı Giriş!!! Tekrar Deneyiniz.";
                }
                cmd.Dispose();
                listt.Close();

            }
            else if (RadioButton3.Checked)
            {
                SqlCommand cmd = new SqlCommand("Select * from Musteriler where musteriKimlikNo=@musteriKimlikNo AND sifre=@sifre", baglanti);

                cmd.Parameters.AddWithValue("@musteriKimlikNo", kimlikNo);
                cmd.Parameters.AddWithValue("@sifre", sifre);
                baglanti.Open();
                SqlDataReader listt = cmd.ExecuteReader();
                if (listt.HasRows)
                {
                    while (listt.Read())
                    {
                        Session["musteriKimlikNo"] = listt["musteriKimlikNo"];
                        Response.Redirect("Kargolarim.aspx");

                    }
                }
                else
                {
                    label1.Text = "Hatalı Giriş!!! Tekrar Deneyiniz.";
                }
                cmd.Dispose();
                listt.Close();
                baglanti.Close();

            }


        }
    }
}