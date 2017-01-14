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
    public partial class LoginNew : System.Web.UI.Page
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
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.login", Assembly.GetExecutingAssembly());

            try
            {
                
                copy.Text = res.GetString("copy", cul);
                emailLit.Text = res.GetString("emailLit", cul);
                english.Text = res.GetString("english", cul);
                language.Text = res.GetString("language", cul);
                loginhead.Text = res.GetString("loginhead", cul);
                passLit.Text = res.GetString("passLit", cul);
                russian.Text = res.GetString("russian", cul);
                portuguese.Text = res.GetString("portuguese", cul);
                reg.Text = res.GetString("reg", cul);
                remeberLit.Text = res.GetString("remeberLit", cul);
                btnLogin.Text = res.GetString("btnLogin", cul);
                homeLit.Text = res.GetString("homeLit", cul);
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string EMAIL = inputEmail.Value;
            string PASSWORD = inputPassword.Value;




            GuestOperation gu = new GuestOperation();

            try
            {

                if (EMAIL.Equals("hameez@admin.com") && PASSWORD.Equals("abc123"))
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else if (gu.guestLogin(EMAIL, PASSWORD))
                {
                    Response.Redirect("Reservation.aspx");
                }
                    //else if (EMAIL.Equals("Hameez@admin.com") && PASSWORD.Equals("abc123"))
                    //{
                    //     Response.Redirect("AdminDashboard.aspx");
                    //}
                else
                {
                    Msg.Text = res.GetString("Msg",cul);
                }

            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }

        protected void homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}