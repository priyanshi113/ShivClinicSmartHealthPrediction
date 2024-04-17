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
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                int eid = SessionManager.getAdminID();

                tblUserRegistration ur = db.tblUserRegistration.Where(x => x.UserID == eid).FirstOrDefault();
                if (ur != null)
                {
                    lb1.Text = "Welcome, " + ur.UserFullName;
                }
                else
                {
                    Response.Redirect("Home");
                }
            }
        }

        protected void lnkBtnLogout_Click(object sender, EventArgs e)
        {
            SessionManager.endSmartSession();
            Response.Redirect("Home");
        }
    }
}