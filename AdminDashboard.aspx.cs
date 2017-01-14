using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using System.Data.Linq;

using Entity_Layer;
using Bussiness_Layer;
using System.Resources;
using System.Globalization;
using BusinessLayer;
using System.Reflection;

namespace WebApplication_Hotel_ASP
{
    public partial class AdminDashboard : System.Web.UI.Page
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
            res = new ResourceManager("WebApplication_Hotel_ASP.App_GlobalResources.adminDash", Assembly.GetExecutingAssembly());

            try
            {

                addroom.Text = res.GetString("addroom", cul);
                adminLit.Text = res.GetString("adminLit", cul);
                btnaddroom.Text = res.GetString("btnaddroom", cul);
                btndeleteroom.Text = res.GetString("btndeleteroom", cul);
                btneditroom.Text = res.GetString("btneditroom", cul);
                copy.Text = res.GetString("copy", cul);
                deleteRoom.Text = res.GetString("deleteRoom", cul);
                drproomid.Text = res.GetString("drproomid", cul);
                english.Text = res.GetString("english", cul);
                header2.Text = res.GetString("header2", cul);
                headerAv.Text = res.GetString("headerAv", cul);
                headerRes.Text = res.GetString("headerRes", cul);
                homeLit.Text = res.GetString("homeLit", cul);
                language.Text = res.GetString("language", cul);
                litrate.Text = res.GetString("litrate", cul);
                litrDISC.Text = res.GetString("litrDISC", cul);
                litrID.Text = res.GetString("litrID", cul);
                litrNAME.Text = res.GetString("litrNAME", cul);
                litrNUMBER.Text = res.GetString("litrNUMBER", cul);
                litroomdisc.Text = res.GetString("litroomdisc", cul);
                litroomid.Text = res.GetString("litroomid", cul);
                litroomname.Text = res.GetString("litroomname", cul);
                litroomnumber.Text = res.GetString("litroomnumber", cul);
                litroomsize.Text = res.GetString("litroomsize", cul);
                litrRATE.Text = res.GetString("litrRATE", cul);
                litrSIZE.Text = res.GetString("litrSIZE", cul);
                portuguese.Text = res.GetString("portuguese", cul);
                russian.Text = res.GetString("russian", cul);
                title1.Text = res.GetString("title1", cul);
                updateRoom.Text = res.GetString("updateRoom", cul);




            }
            catch (MissingManifestResourceException ex)
            {
                ex.GetBaseException();
            }


        }




        protected void btnaddroom_Click(object sender, EventArgs e)
        {
            RoomOperation ro1 = new RoomOperation();

            ro1.rID = txtroomid.Text;
            ro1.rName = txtroomname.Text;
            ro1.rSize = txtsize.Text;
            ro1.rRate = txtrate.Text;
            ro1.rNumber = txtnumber.Text;
            ro1.Description = txtdesc.Text;



            ro1.insertRoom(ro1);
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void btneditroom_Click(object sender, EventArgs e)
        {
            RoomOperation ro2 = new RoomOperation();


            ro2.ROOMID = txtid.Text;
            ro2.ROOMNAME = txtname.Text;
            ro2.SIZE = txtroomsize.Text;
            ro2.ROOMRATE = txtroomrate.Text;
            ro2.ROOMNUMBER = txtroomnum.Text;
            ro2.DESCRIPTION = txtroomdisc.Text;
            


            ro2.editRoom(ro2);
            Response.Redirect("AdminDashboard.aspx");

            //string message = "Your room has been updated successfully.";
            //string script = "window.onload = function(){ alert('";
            //script += message;
            //script += "')};";
            //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }

        protected void btndeleteroom_Click(object sender, EventArgs e)
        {
            string id = DropDownList1.Text;

            RoomOperation ro3 = new RoomOperation();
            ro3.deleteRoom(id);
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
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
    }
}