using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargoTakipUygulaması.WebForm
{
    public partial class KargoEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string durum = DropDownList1.Text;
            string id = txtmusteriID.Text;
            string adres = txtAdres.Text;
            string tarih = txtTarih.Text;
            string sorumlu = txtSorumlu.Text;
            string sube = txtSubeID.Text;
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO Kargolar (durum,musteriId,adres,teslimTarihi,sorumluId,subeId) VALUES (@durum,@musteriId,@adres,@teslimTarihi,@sorumluId,@subeId)", baglanti);
            cmd.Parameters.AddWithValue("@durum",durum);
            cmd.Parameters.AddWithValue("@musteriId", id);
            cmd.Parameters.AddWithValue("@adres", adres);
            cmd.Parameters.AddWithValue("@teslimTarihi", tarih);
            cmd.Parameters.AddWithValue("@sorumluId", sorumlu);
            cmd.Parameters.AddWithValue("@subeId", sube);
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}