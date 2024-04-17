using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartHealthPredication.Models;


namespace SmartHealthPredication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            data();
        }



        private void data()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                List<tblFeedBack> fb = db.tblFeedBack.Where(a => a.Status == "Active").ToList();
                if (fb.Count > 0)
                {
                    rpSearchDetail.DataSource = fb;
                    rpSearchDetail.DataBind();
                }
            }
        }
    }
}