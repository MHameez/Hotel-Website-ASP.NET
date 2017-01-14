using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using System.Reflection;
using System.Resources;
using BusinessLayer;

namespace WebApplication_Hotel_ASP
{
    public partial class Index : System.Web.UI.Page
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
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.index", Assembly.GetExecutingAssembly());

            try
            {
                span01.Text = res.GetString("span01", cul);
                span02.Text = res.GetString("span02", cul);
                span03.Text = res.GetString("span03", cul);
                header01.Text = res.GetString("header01", cul);
                resteurant.Text = res.GetString("resteurant", cul);
                heat.Text = res.GetString("heat", cul);
                heatDisc.Text = res.GetString("heatDisc", cul);
                pepper.Text = res.GetString("pepper", cul);
                pepperDisc.Text = res.GetString("pepperDisc", cul);
                lounge.Text = res.GetString("lounge", cul);
                lougeDisc.Text = res.GetString("lougeDisc", cul);
                poolside.Text = res.GetString("poolside", cul);
                poolsideDisc.Text = res.GetString("poolsideDisc", cul);
                cafe.Text = res.GetString("cafe", cul);
                cafeDisc.Text = res.GetString("cafeDisc", cul);
                mapLit.Text = res.GetString("mapLit", cul);



            }
            catch (MissingManifestResourceException ex)
            {
                ex.GetBaseException();
            }


        }


    }
}