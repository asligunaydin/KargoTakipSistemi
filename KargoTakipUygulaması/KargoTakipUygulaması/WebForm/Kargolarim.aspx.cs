using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KargoTakipUygulaması.WebForm
{
    public partial class Kargolarim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["musteriKimlikNo"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            int musteriId = Convert.ToInt16(Session["musteriId"]);

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select kargoId,durum,adres,teslimTarihi from Kargolar Where musteriId=musteriId  ", baglanti);
            cmd.Parameters.AddWithValue("@musteriId", musteriId);
            baglanti.Open();
            SqlDataReader list = cmd.ExecuteReader();
            GridView1.DataSource = list;
            GridView1.DataBind();
            cmd.Dispose();
            list.Close();
            
        }
    }
}