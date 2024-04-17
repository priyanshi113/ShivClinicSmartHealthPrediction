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
    public partial class AdminPaitentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindPatientList();
                bindPatientAppoinment();
                DoctorDetails.Visible = false;
                DoctorAppoinmentList.Visible = false;
            }

        }


        private void bindPatientList()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var id = 1;
                var objPatientList = from ur in db.tblUserRegistration
                                     where ur.RoleID == id
                                     select new
                                     {
                                         UserID = ur.UserID,
                                         PaitentName = ur.UserFullName,
                                         EmailID = ur.EmailID,
                                         MobileNumber = ur.MoblieNumber,
                                         AdharCardNumber = ur.AdharCardNumber,
                                         Address = ur.Address,
                                         City = ur.City,
                                         DateOfBirth = ur.DateOfBirth,
                                         Status = ur.Status,

                                     };
                LstPatient.DataSource = objPatientList.ToList();
                LstPatient.DataBind();

            }
        }

        private void bindPatientAppoinment()
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                var objPatientAppoinment = from rl in db.View_AppoinmentList
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
                                               Status = rl.Status,
                                               image = "/assets/img/DiseasesPrediction/" + rl.images,

                                           };
                LstPatientAppoinment.DataSource = objPatientAppoinment.ToList();
                LstPatientAppoinment.DataBind();

            }
        }

        private void bindDoctorList()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var id = 2;
                var objDoctorList = from ur in db.tblUserRegistration
                                    where ur.RoleID == id
                                    select new
                                    {
                                        UserID = ur.UserID,
                                        PaitentName = ur.UserFullName,
                                        EmailID = ur.EmailID,
                                        MobileNumber = ur.MoblieNumber,
                                        AdharCardNumber = ur.AdharCardNumber,
                                        Address = ur.Address,
                                        City = ur.City,
                                        DateOfBirth = ur.DateOfBirth,
                                        Designation = "/assets/img/DoctorDesignation/" + ur.Designation,
                                        Status = ur.Status,

                                    };

                LstDoctor.DataSource = objDoctorList.ToList();
                LstDoctor.DataBind();

            }
        }

        private void bindDoctorAppoinmentSchedule()
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                var objDoctorAppoinmentSchedule = from rl in db.View_AppoinmentList
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

        protected void lnkPatientDetails_Click(object sender, EventArgs e)
        {
            bindPatientList();
            bindPatientAppoinment();
            DoctorAppoinmentList.Visible = false;
            DoctorDetails.Visible = false;
            PaitentDetails.Visible = true;
            PatientAppoinmentList.Visible = true;

        }

        protected void lnkDoctorDetails_Click(object sender, EventArgs e)
        {
            bindDoctorList();
            bindDoctorAppoinmentSchedule();
            PaitentDetails.Visible = false;
            PatientAppoinmentList.Visible = false;
            DoctorAppoinmentList.Visible = true;
            DoctorDetails.Visible = true;

        }



        protected void Block_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string yourValue = btn.CommandArgument;
            if (btn.CommandName == "Blocked")
            {
                int UserID = Convert.ToInt32(btn.CommandArgument);
                using (var db = new SmartHealthPredicationEntities())
                {
                    tblUserRegistration user = db.tblUserRegistration.Where(a => a.UserID == UserID).FirstOrDefault();
                    if (user != null)
                    {
                        user.Status = "Blocked";
                        db.SaveChanges();
                        bindPatientList();
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
                        da.BookingDate = DateTime.Now;
                        da.Status = "Blocked";

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
                        sb.Append("By Admin Please contact to the service provider to Rearrange the appoinment.<br/>");
                        sb.Append("Your Appoinment Date is: <b>" + da.BookingDate + "</b> <br/>");
                        sb.Append("<br/>");
                        sb.Append("<br/><br/>");
                        sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                        sb.Append("The Smart Health Prediction Team");

                        new Thread(() => { MailHelper.SendMailMessage("Appoinment Status", sb.ToString(), ur.EmailID); }).Start();
                    }
                }
            }
        }

        protected void Accept_Click(object sender, EventArgs e)
        {

            LinkButton btn = (LinkButton)(sender);
            string yourValue = btn.CommandArgument;
            using (var db = new SmartHealthPredicationEntities())
            {
                if (btn.CommandName == "Accept")
                {
                    int UserID = Convert.ToInt32(btn.CommandArgument);

                    tblUserRegistration user = db.tblUserRegistration.Where(a => a.UserID == UserID).FirstOrDefault();
                    if (user != null)
                    {
                        user.Status = "Active";
                        db.SaveChanges();
                        bindDoctorList();
                    }

                }
                else
                {
                    if (btn.CommandName == "Decline")
                    {
                        int UserID = Convert.ToInt32(btn.CommandArgument);

                        tblUserRegistration user = db.tblUserRegistration.Where(a => a.UserID == UserID).FirstOrDefault();
                        if (user != null)
                        {
                            user.Status = "Decline";
                            db.SaveChanges();
                            bindDoctorList();
                        }
                    }
                }
                int id = Convert.ToInt32(btn.CommandArgument);
                tblUserRegistration ur = db.tblUserRegistration.Where(a => a.UserID == id).FirstOrDefault();
                if (ur != null)
                {
                    var doctorname = db.tblUserRegistration.Where(b => b.UserID == id).FirstOrDefault().UserFullName;
                    StringBuilder sb = new StringBuilder();
                    sb.Append("Hello, <br/>");
                    sb.Append("<b>Dr. " + ur.UserFullName + "</b> <br/>");
                    sb.Append("Your Sign Up Request has been : <b>" + btn.CommandName + "</b> <br/>");
                    sb.Append("By Admin Now you Can Access your Account with your Registered Email ID <br/><br/>");
                    sb.Append("Click here to Access: http://www.SmartHealthPrediction.somee.com/PatientLogin <br/>");
                    sb.Append("<br/>");
                    sb.Append("<br/><br/>");
                    sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                    sb.Append("The Smart Health Prediction Team");

                    new Thread(() => { MailHelper.SendMailMessage("Smart Health Prediction Sign Up Details", sb.ToString(), ur.EmailID); }).Start();
                }
            }
        }


    }
}