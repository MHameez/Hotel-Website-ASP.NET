using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using Entity_Layer;
using System.Resources;
using System.Reflection;
using System.Globalization;
using System.Threading;

namespace WebApplication_Hotel_ASP
{
    public partial class Master : System.Web.UI.MasterPage
    {
        private String currentGuest;
        private ResourceManager res;
        private CultureInfo cul;
        private GuestOperation go;
        protected void Page_Load(object sender, EventArgs e)
        {
            currentGuest = null;

            if (Session["lang"] == null)
            {
                Session["lang"] = Request.UserLanguages[0];
                LoadString();
            }
            else
            {
                LoadString();
            }
        }

        private void LoadString()
        {
            string a = Session["lang"].ToString();
            cul = new CultureInfo(Session["lang"].ToString());
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.master", Assembly.GetExecutingAssembly());

           try
           {
                aboutUs.Text = res.GetString("aboutUs", cul);
                copy.Text = res.GetString("copy", cul);
                english.Text = res.GetString("english", cul);
                german.Text = res.GetString("german", cul);
                home.Text = res.GetString("home", cul);
                language.Text = res.GetString("language", cul);
                reservation.Text = res.GetString("reservation", cul);
                russian.Text = res.GetString("russian", cul);
                word1.Text = res.GetString("word1", cul);
                room.Text = res.GetString("room", cul);
                adminLit.Text = res.GetString("adminLit", cul);

            }
           catch (MissingManifestResourceException ex)
           {
               ex.GetBaseException();
           }


        }

        protected void LinkButtonEng_Click(object sender, EventArgs e)
        {


            if (currentGuest != null)
            {
                go = new GuestOperation();
                go.changeLanguageBAL(1, currentGuest);
            }
            Session["lang"] = "en-US";
            Session["langH"] = "en-US";
            Server.Transfer(Request.FilePath);

        }

        protected void LinkButtonFr_Click(object sender, EventArgs e)
        {


            if (currentGuest != null)
            {
                go = new GuestOperation();
                go.changeLanguageBAL(2, currentGuest);
            }
            //russian
            Session["lang"] = "ru-RU";
            Session["langH"] = "ru-RU";
            Server.Transfer(Request.FilePath);

        }

        protected void LinkButtonCh_Click(object sender, EventArgs e)
        {


            if (currentGuest != null)
            {
                go = new GuestOperation();
                go.changeLanguageBAL(3, currentGuest);
            }
            //Portugese
            Session["lang"] = "pt-BR";
            Session["langH"] = "pt-BR";
            Server.Transfer(Request.FilePath);

        }
    }
}