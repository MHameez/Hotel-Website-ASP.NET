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
    public partial class RoomTypes : System.Web.UI.Page
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
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.room", Assembly.GetExecutingAssembly());

            try
            {
                room01.Text = res.GetString("room01", cul);
                room01D.Text = res.GetString("room01D", cul);
                room02.Text = res.GetString("room02", cul);
                room02D.Text = res.GetString("room02D", cul);
                room03.Text = res.GetString("room03", cul);
                room03D.Text = res.GetString("room03D", cul);





            }
            catch (MissingManifestResourceException ex)
            {
                ex.GetBaseException();
            }


        }

      
    }
}