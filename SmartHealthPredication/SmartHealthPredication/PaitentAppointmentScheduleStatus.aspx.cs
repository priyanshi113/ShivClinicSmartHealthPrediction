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
    public partial class PaitentAppointmentScheduleStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindAppoinmentSchedule();
                Feedbackform.Visible = false;
            }
        }

        private void bindAppoinmentSchedule()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var id = SessionManager.getPaitentID();
                var objDoctorAppoinmentSchedule = from rl in db.View_AppoinmentList
                                                  where rl.PaitentID == id
                                                  select new
                                                  {
                                                      AppointmentID = rl.AppointmentID,
                                                      PatientName = db.tblUserRegistration.Where(a => a.UserID == rl.PaitentID).FirstOrDefault().UserFullName,
                                                      DoctorName = db.tblUserRegistration.Where(a => a.UserID == rl.DoctorID).FirstOrDefault().UserFullName,
                                                      Symptoms = db.tblSymptomsList.Where(c => c.SymptomsID == rl.SymptomsID).FirstOrDefault().SymptomsName,
                                                      SymptomsPredictionName = rl.SymptomsPredictionName,
                                                      DiseasesName = rl.DiseasesName,
                                                      RequestDate = rl.RequestDate,
                                                      BookingDate = rl.BookingDate,
                                                      image = "/assets/img/DiseasesPrediction/" + rl.images,
                                                      Status = rl.Status,

                                                  };
                LstDoctorAppoinmentSchedule.DataSource = objDoctorAppoinmentSchedule.ToList();
                LstDoctorAppoinmentSchedule.DataBind();

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
                        da.BookingDate = DateTime.Now;
                        da.Status = "Cancel";

                        db.SaveChanges();
                        bindAppoinmentSchedule();
                    }

                    tblUserRegistration ur = db.tblUserRegistration.Where(a => a.UserID == da.PaitentID).FirstOrDefault();
                    if (ur != null)
                    {
                        var doctorname = db.tblUserRegistration.Where(b => b.UserID == da.DoctorID).FirstOrDefault().UserFullName;
                        StringBuilder sb = new StringBuilder();
                        sb.Append("Hello, <br/>");
                        sb.Append("Mr/Miss: " + ur.UserFullName + " <br/>");
                        sb.Append("Your Appoinment has been : <b>" + da.Status + "</b> <br/>");
                        sb.Append("By Your Self Please contact to the service provider to Rearrange the appoinment.<br/>");
                        sb.Append("Your Appoinment Cancel Date is: <b>" + da.BookingDate + "</b> <br/>");
                        sb.Append("<br/>");
                        sb.Append("<br/><br/>");
                        sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                        sb.Append("The Smart Health Prediction Team");

                        new Thread(() => { MailHelper.SendMailMessage("Appoinment Status", sb.ToString(), ur.EmailID); }).Start();
                    }
                }
            }
        }

        protected void FeedBack_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string yourValue = btn.CommandArgument;
            if (btn.CommandName == "FeedBack")
            {
                using (var db = new SmartHealthPredicationEntities())
                {

                    var data = db.tblUserRegistration.Where(a => a.UserFullName == yourValue).FirstOrDefault().UserID;
                    var id = db.tblFeedBack.Where(b => b.DoctorID == data).FirstOrDefault();
                    if (id != null)
                    {
                        lbadd.Text = "FeedBack is Already Given to this Doctor.";
                    }
                    else
                    {
                        lbdoctorname.Text = yourValue;
                        Feedbackform.Visible = true;
                    }


                }

            }
        }

        protected void lnkDiseasePredicationPredication_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaitentDiseasePredication");
        }

        protected void lnkAppointmentScheduleStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaitentAppointmentScheduleStatus");
        }



        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                var Feedback = db.tblUserRegistration.Where(a => a.UserFullName == lbdoctorname.Text).FirstOrDefault().UserID;
                if (Feedback != 0)
                {
                    var id = SessionManager.getPaitentID();
                    //  var data = db.tblFeedBack.Where(a => a.PatientID == id).FirstOrDefault();
                    if (id != 0)
                    {
                        tblFeedBack fb = new tblFeedBack();
                        fb.PatientID = id;
                        fb.PatientName = db.tblUserRegistration.Where(a => a.UserID == id).FirstOrDefault().UserFullName;
                        fb.DoctorID = db.tblUserRegistration.Where(b => b.UserFullName == lbdoctorname.Text).FirstOrDefault().UserID;
                        fb.DoctorName = lbdoctorname.Text;
                        fb.Rating = rbrating.SelectedValue;
                        fb.Feedback = tbFeedback.Text;
                        fb.Status = "Active";

                        db.tblFeedBack.Add(fb);
                        db.SaveChanges();

                        btnFeedback.Visible = false;
                        lbFeed.Text = "FeedBack is  Added.";
                    }
                }
             
            }
        }
    }
}
