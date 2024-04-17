using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading;
using SmartHealthPredication.Models;
using SmartHealthPredication.Helper;

namespace SmartHealthPredication
{
    public partial class HomeContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            var emailaid = "shivclinic60@gmail.com";
            sb.Append("<html>");
            sb.Append("<body>");
            sb.Append("Person Query  <br/>");
            sb.Append("<br/><br/>");
            sb.Append("EmailID: " + tbContactEmailID.Text + " <br/>");
            sb.Append("Subject: " + tbContactSubject.Text + " <br/>");
            sb.Append("Description: " + tbContactQuery.Text + " <br/>");
            sb.Append("<br/><br/>");
            sb.Append("Smart Health Predication<br/> ");

            sb.Append("</body>");
            sb.Append("</html>");

            new Thread(() => { MailHelper.SendMailMessage("User Contact", sb.ToString(), emailaid); }).Start();
            lb1.Text = "Request is sent..";

        }
    }
}