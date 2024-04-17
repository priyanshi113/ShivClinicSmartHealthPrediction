using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartHealthPredication.Models;
using SmartHealthPredication.Helper;
using System.Text;
using System.Threading;

namespace SmartHealthPredication
{
    public partial class DoctorAppointmentScheduleList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindPatientAppoinment();
                data();
            }


        }

        private void data()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                int ID = SessionManager.getDoctorID();
                List<tblFeedBack> fb = db.tblFeedBack.Where(a => a.DoctorID == ID && a.Status == "Active").ToList();


                rpSearchDetail.DataSource = fb;
                rpSearchDetail.DataBind();
            }
        }


        private void bindPatientAppoinment()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var id = SessionManager.getDoctorID();
                var objPatientAppoinment = from rl in db.View_AppoinmentList
                                           where rl.DoctorID == id && rl.Status == "Pending"
                                           select new
                                           {
                                               AppointmentID = rl.AppointmentID,
                                               PatientName = db.tblUserRegistration.Where(a => a.UserID == rl.PaitentID).FirstOrDefault().UserFullName,
                                               Symptoms = db.tblSymptomsList.Where(c => c.SymptomsID == rl.SymptomsID).FirstOrDefault().SymptomsName,
                                               SymptomsPredictionName = rl.SymptomsPredictionName,
                                               DiseasesName = rl.DiseasesName,
                                               RequestDate = rl.RequestDate,
                                               Status = rl.Status,

                                           };
                LstPatientAppoinment.DataSource = objPatientAppoinment.ToList();
                LstPatientAppoinment.DataBind();

            }
        }

        protected void Accept_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string yourValue = btn.CommandArgument;

            if (btn.CommandName == "Accept")
            {
                int AppointmentID = Convert.ToInt32(btn.CommandArgument);
                using (var db = new SmartHealthPredicationEntities())
                {
                    tblDoctorAppointment da = db.tblDoctorAppointment.Where(a => a.AppointmentID == AppointmentID).FirstOrDefault();
                    if (da != null)
                    {
                        da.BookingDate = Convert.ToDateTime(tbdate.Text);
                        da.Status = "Approved";

                        db.SaveChanges();
                        bindPatientAppoinment();
                    }

                    tblUserRegistration ur = db.tblUserRegistration.Where(a => a.UserID == da.PaitentID).FirstOrDefault();
                    if (ur != null)
                    {
                        var doctorname = db.tblUserRegistration.Where(b => b.UserID == da.DoctorID).FirstOrDefault().UserFullName;
                        StringBuilder sb = new StringBuilder();

                        sb.Append("Hello " + ur.UserFullName + " <br/>");
                        sb.Append("Your Appoinment is: <b>" + da.Status + "</b> <br/>");
                        sb.Append("BY Doctor is: <b>" + doctorname + "</b> <br/>");
                        sb.Append("Your Appoinment Date is: <b>" + tbdate.Text + "</b> <br/>");
                        sb.Append("<br/>");
                        sb.Append("<br/><br/>");
                        sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                        sb.Append("The Smart Health Prediction Team");

                        new Thread(() => { MailHelper.SendMailMessage("Appoinment Status", sb.ToString(), ur.EmailID); }).Start();
                        lbstatus.Text = "Appoinment Accepted.";
                    }
                }
            }
        }

        protected void Decline_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string yourValue = btn.CommandArgument;
            if (btn.CommandName == "Decline")
            {
                int AppointmentID = Convert.ToInt32(btn.CommandArgument);
                using (var db = new SmartHealthPredicationEntities())
                {
                    tblDoctorAppointment da = db.tblDoctorAppointment.Where(a => a.AppointmentID == AppointmentID).FirstOrDefault();
                    if (da != null)
                    {
                        da.BookingDate = Convert.ToDateTime(tbdate.Text);
                        da.Status = "Cancel";

                        db.SaveChanges();
                        bindPatientAppoinment();
                    }

                    tblUserRegistration ur = db.tblUserRegistration.Where(a => a.UserID == da.PaitentID).FirstOrDefault();
                    if (ur != null)
                    {
                        var doctorname = db.tblUserRegistration.Where(b => b.UserID == da.DoctorID).FirstOrDefault().UserFullName;
                        StringBuilder sb = new StringBuilder();
                        sb.Append("Hello, <br/>");
                        sb.Append("Mr/Miss: " + ur.UserFullName + " <br/>");
                        sb.Append("Your Appoinment has been : <b>" + da.Status + "</b> <br/>");
                        sb.Append("By Doctor: <b>" + doctorname + "</b> <br/>");
                        sb.Append("Doctor will be Available on Date: <b>" + tbdate.Text + "</b> <br/>");
                        sb.Append("If the Date is Comfotable the Re-Send the Request for Appoinment<br/>");
                        sb.Append("Click on the link to open your account:http://www.SmartHealthPrediction.somee.com  <br/>");
                        sb.Append("<br/>");
                        sb.Append("<br/><br/>");
                        sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                        sb.Append("The Smart Health Prediction Team");

                        new Thread(() => { MailHelper.SendMailMessage("Appoinment Status", sb.ToString(), ur.EmailID); }).Start();
                        lbstatus.Text = "Appoinment Decline.";
                    }
                }
            }
        }

        protected void lnkPatientAppointmentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorAppointmentScheduleList");
        }

        protected void lnkAddNewSymptoms_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewSymptoms");
        }

        //protected void Unnamed_Click(object sender, EventArgs e)
        //{
        //    LinkButton btn = (LinkButton)(sender);
        //    string yourValue = btn.CommandArgument;

        //    if (btn.CommandName == "Accept")
        //    {
        //        int AppointmentID = Convert.ToInt32(btn.CommandArgument);
        //        using (var db = new SmartHealthPredicationEntities())
        //        {
        //            tblDoctorAppointment da = db.tblDoctorAppointment.Where(a => a.AppointmentID == AppointmentID).FirstOrDefault();
        //            if (da != null)
        //            {
        //                da.BookingDate = Convert.ToDateTime(tbdate.Text);
        //                da.Status = "Approved";

        //                db.SaveChanges();
        //            }

        //            tblUserRegistration ur = db.tblUserRegistration.Where(a => a.UserID == da.PaitentID).FirstOrDefault();
        //            if (ur != null)
        //            {
        //                var doctorname = db.tblUserRegistration.Where(b => b.UserID == da.DoctorID).FirstOrDefault().UserFullName;
        //                StringBuilder sb = new StringBuilder();

        //                sb.Append("Hello " + ur.UserFullName + " <br/>");
        //                sb.Append("Your Appoinment is: <b>" + da.Status + "</b> <br/>");
        //                sb.Append("BY Doctor is: <b>" + doctorname + "</b> <br/>");
        //                sb.Append("Your Appoinment Date is: <b>" + tbdate.Text + "</b> <br/>");
        //                sb.Append("<br/>");
        //                sb.Append("<br/><br/>");
        //                sb.Append("Thanks for using Smart Health Prediction!<br/> ");
        //                sb.Append("The Smart Health Prediction Team");

        //                new Thread(() => { MailHelper.SendMailMessage("Forgot Passwor", sb.ToString(), ur.EmailID); }).Start();
        //            }
        //        }
        //    }
        //}
    }
}