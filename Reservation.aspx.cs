using BusinessLayer;
using Bussiness_Layer;
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
    public partial class Reservation : System.Web.UI.Page
    {
        private String currentGuest;
        private ResourceManager res;
        private CultureInfo cul;
        private GuestOperation go;
        string reserveID = "";
        

        //your necessary parameters value go here

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


            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
        }

        private void LoadString()
        {
            string a = Session["lang"].ToString();
            cul = new CultureInfo(Session["lang"].ToString());
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.reserve", Assembly.GetExecutingAssembly());

            try
            {

                copy.Text = res.GetString("copy", cul);
                english.Text = res.GetString("english", cul);
                language.Text = res.GetString("language", cul);                         
                russian.Text = res.GetString("russian", cul);
                portuguese.Text = res.GetString("portuguese", cul);               
                adminLit.Text = res.GetString("adminLit", cul);
                emailLit.Text = res.GetString("emailLit", cul);
                departure.Text = res.GetString("departure", cul);
                btnReserve.Text = res.GetString("btnReserve", cul);
                arrival.Text = res.GetString("arrival", cul);
                RoomId.Text = res.GetString("RoomId", cul);
                rooms.Text = res.GetString("rooms", cul);
                ResH1.Text = res.GetString("ResH1", cul);
                Homebtn.Text = res.GetString("Homebtn", cul);



            }
            catch (MissingManifestResourceException ex)
            {
                ex.GetBaseException();
            }
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            string emailAddress = email.Text;
            string checkIn = dateArrive.Text;
            string checkOut = dateDeparture.Text;
            string roomId = DropDownList1.Text;


            double differ1 = Convert.ToDateTime(dateDeparture.Text).Subtract(Convert.ToDateTime(dateArrive.Text)).TotalDays;

            RoomOperation ram = new RoomOperation();
            int r = ram.getRoomAmount(Convert.ToInt32(roomId));
            int TotalAmount = r * Convert.ToInt32(differ1);

            RoomOperation room = new RoomOperation();
            room.reserveroom(roomId, emailAddress, checkIn, checkOut, TotalAmount);
            Response.Redirect("Index.aspx");

            

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

        protected void Homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void calendarImg_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
            }
            else
            {
                Calendar1.Visible = false;
            }
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dateArrive.Text =  Calendar1.SelectedDate.ToShortDateString();

            Calendar1.Visible = false;

        }
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            
            dateDeparture.Text = Calendar2.SelectedDate.ToShortDateString();

            Calendar2.Visible = false;
        }

        protected void calendarImg2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible == false)
            {
                Calendar2.Visible = true;
            }
            else
            {
                Calendar2.Visible = false;
            }
        }
    }
}