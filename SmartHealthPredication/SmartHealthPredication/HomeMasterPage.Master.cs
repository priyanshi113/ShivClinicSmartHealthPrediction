using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartHealthPredication.Models;
using SmartHealthPredication.Helper;

namespace SmartHealthPredication
{
    public partial class HomeMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var db = new SmartHealthPredicationEntities())
                {
                    int Aid = SessionManager.getAdminID();
                    int Pid = SessionManager.getPaitentID();
                    int Did = SessionManager.getDoctorID();
                    if (Pid > 0 || Did > 0 || Aid > 0)
                    {

                        tblUserRegistration ur = db.tblUserRegistration.Where(x => x.UserID == Pid || x.UserID == Did || x.UserID == Aid).FirstOrDefault();
                        if (ur != null)
                        {
                            lnkBtnLogin.Visible = false;
                            lnkBtnLogout.Visible = true;
                            lb1.Text = "Welcome, " + ur.UserFullName;
                        }
                        else
                        {
                            Response.Redirect("/Home");
                        }
                    }
                    else
                    {
                        lnkBtnLogout.Visible = false;
                    }
                }
            }
        }

        protected void lnkBtnLogout_Click(object sender, EventArgs e)
        {
            SessionManager.endSmartSession();
            Response.Redirect("/Home");
        }

        protected void lnkBtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeLogin");
        }
    }
}