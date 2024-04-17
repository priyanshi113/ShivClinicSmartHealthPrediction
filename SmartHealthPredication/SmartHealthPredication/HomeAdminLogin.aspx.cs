using System;
using System.Collections.Generic;
using System.Linq;
using SmartHealthPredication.Models;
using SmartHealthPredication.Helper;
using System.Web;

namespace SmartHealthPredication
{
    public partial class HomeAdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                PasswordVerify.Visible = false;
                EmilaVerify.Visible = false;
                SecurityCode.Visible = true;
            }
        }


        protected void btnSecurityCode_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                tblUserRegistration Code = db.tblUserRegistration.Where(a => a.RoleID == 3 && a.Password == tbSecurityCode.Text && a.Status == "Active").FirstOrDefault();
                if (Code != null)
                {
                    SecurityCode.Visible = false;
                    EmilaVerify.Visible = true;
                }
                else
                {
                    Response.Redirect("Error404");
                }

            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                tblUserRegistration Email = db.tblUserRegistration.Where(a => a.RoleID == 3 && a.EmailID == AdminEmailID.Text).FirstOrDefault();
                if (Email != null)
                {
                    SecurityCode.Visible = false;
                    EmilaVerify.Visible = false;
                    PasswordVerify.Visible = true;
                }
                else
                {
                    Response.Redirect("Error404");
                }
            }
        }

        protected void btnPasswordVerify_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                tblUserRegistration Password = db.tblUserRegistration.Where(a => a.RoleID == 3 && a.Password == tbAdminPassword.Text).FirstOrDefault();
                if (Password != null)
                {

                    SessionManager.setAdminID(Password.UserID);
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
                    Response.Cache.SetNoStore();
                    Response.Redirect("AdminPaitentList");

                }
                else
                {
                    Response.Redirect("Error404");
                }

            }
        }
    }
}