using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using Entity_Layer;

namespace WebApplication_Hotel_ASP
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            GuestOperation gu = new GuestOperation();

            gu.FirstName = firstname.Text;
            gu.LastName = lastname.Text;
            gu.Contact = Int32.Parse(contact.Text);
            gu.Email = email.Text;
            gu.Password = password.Text;
            gu.ConfPasword = password_confirmation.Text;

            BusinessLayer.GuestOperation.registerUserMeth(gu);
            Response.Redirect("LoginNew.aspx");
        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}