using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Resources;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Hotel_ASP
{
    public partial class About : System.Web.UI.Page
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
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.about", Assembly.GetExecutingAssembly());

            try
            {
                aboutLit.Text = res.GetString("aboutLit", cul);
                galleryLit.Text = res.GetString("galleryLit", cul);
                head01.Text = res.GetString("head01", cul);
                vidLit.Text = res.GetString("vidLit", cul);




            }
            catch (MissingManifestResourceException ex)
            {
                ex.GetBaseException();
            }


        }

    }
}