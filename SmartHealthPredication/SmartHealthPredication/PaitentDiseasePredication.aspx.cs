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
    public partial class PaitentDiseasePredication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rbSymptomList.Visible = false;
                Prediction.Visible = false;
                Status.Visible = false;
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
        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var symptomName = Convert.ToInt32(rbList.SelectedValue);
                if (symptomName != 0)
                {

                    lb1.Text = "Are You  Experiencing any of these  Symptom too?";
                    rbSymptomList.Visible = true;

                }
            }
        }

        protected void rbSymptomList_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                Prediction.Visible = true;

                var symptomid = Convert.ToInt32(rbList.SelectedValue);
                var symptomPredicationid = Convert.ToInt32(rbSymptomList.SelectedValue);
                var symptomList = db.tblSymptomsPrediction.Where(a => a.SymptomsID == symptomid && a.SymptomsPredictionID == symptomPredicationid).Count();
                //   var aa = db.tblDiseasesPredictionList.Where(d => d.SymptomsPredictionID == symptomPredicationid).Count();
                if (symptomList != 0)
                {
                    var pl = db.tblDiseasesPredictionList.Where(b => b.SymptomsPredictionID == symptomPredicationid).FirstOrDefault();
                    if (pl != null)
                    {
                        var predictiondata = db.tblDiseases.Where(c => c.DiseasesID == pl.DiseasesID).FirstOrDefault();
                        lb2.Text = "AS Per Your Selection System Prediction Diseases is:-";
                        lbDiseases.Text = predictiondata.DiseasesName + " :";
                        img.ImageUrl = "/assets/img/DiseasesPrediction/" + predictiondata.images;
                        doctorList();
                    }

                }
            }
        }


        private void doctorList()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var city = SessionManager.getPaitentID();
                var citylist = db.tblUserRegistration.Where(b => b.UserID == city).FirstOrDefault().City;
                //  var citylist = "Gujarat-Surat";
                List<tblUserRegistration> ps = db.tblUserRegistration.Where(a => a.City == citylist && a.RoleID == 2 && a.Status == "Active").ToList();

                if (ps != null)
                {
                    rpSearchDetail.DataSource = ps;
                    rpSearchDetail.DataBind();
                }
            }
        }

        protected void AddAppointment_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "AddAppointment")
            {
                int UserID = Convert.ToInt32(e.CommandArgument);
                using (var db = new SmartHealthPredicationEntities())
                {
                    var symptomid = Convert.ToInt32(rbList.SelectedValue);
                    var symptomPredicationid = Convert.ToInt32(rbSymptomList.SelectedValue);
                    var symptomList = db.tblSymptomsPrediction.Where(a => a.SymptomsID == symptomid && a.SymptomsPredictionID == symptomPredicationid).Count();
                    if (symptomList != 0)
                    {
                        var pl = db.tblDiseasesPredictionList.Where(b => b.SymptomsPredictionID == symptomPredicationid).FirstOrDefault().DiseasesPredictionListID;
                        if (pl != 0)
                        {
                            tblDoctorAppointment Appointment = new tblDoctorAppointment();
                            Appointment.PaitentID = SessionManager.getPaitentID();
                            Appointment.DoctorID = UserID;
                            Appointment.DiseasesPredictionID = pl;
                            Appointment.RequestDate = DateTime.Now;
                            Appointment.Status = "Pending";

                            db.tblDoctorAppointment.Add(Appointment);
                            db.SaveChanges();
                            DoctorList.Visible = false;
                            Status.Visible = true;
                            lbAppointment.Text = "Appointment Request send successfully....<br/>'Appointment schedule will send By Doctor in your Register Email Address'";
                        }
                    }
                }
            }
        }

        //protected void rbSymptomList_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    using (var db = new SmartHealthPredicationEntities())
        //    {
        //        Prediction.Visible = true;
        //        // repeter();
        //        var symptomid = Convert.ToInt32(rbList.SelectedValue);
        //        var symptomPredicationid = Convert.ToInt32(rbSymptomList.SelectedValue);
        //        var symptomList = db.tblSymptomsPrediction.Where(a => a.SymptomsID == symptomid && a.SymptomsPredictionID == symptomPredicationid).Count();

        //        if (symptomList != 0)
        //        {
        //            List<tblDiseasesPredictionList> aa = db.tblDiseasesPredictionList.Where(d => d.SymptomsPredictionID == symptomPredicationid).ToList();

        //            if (aa != null)
        //            {
        //                for (int i = 1; i < aa.Count; i++)
        //                {
        //                    var p = aa[i].DiseasesID;
        //                    var predictiondata = db.tblDiseases.Where(c => c.DiseasesID == p).FirstOrDefault();

        //                    for (int j = 1; j <= predictiondata.DiseasesID; j++)
        //                    {

        //                        if (aa[i].DiseasesID == predictiondata.DiseasesID)
        //                        {
        //                            var pl = aa[i].DiseasesID;
        //                            if (pl != null)
        //                            {
        //                                List<tblDiseases> prdata = db.tblDiseases.Where(c => c.DiseasesID == predictiondata.DiseasesID).ToList();
        //                                // var predictiondata = db.tblDiseases.Where(c => c.DiseasesID == aa);
        //                                if (prdata != null)
        //                                {

        //                                    rpSearchDetail.DataSource = prdata;
        //                                    rpSearchDetail.DataBind();
        //                                }

        //                            }
        //                        }
        //                    }
        //                }
        //            }
        //        }
        //    }
        //}


        //private void repeter()
        //{
        //    using (var db = new SmartHealthPredicationEntities())
        //    {
        //        var symptomid = Convert.ToInt32(rbList.SelectedValue);
        //        var symptomPredicationid = Convert.ToInt32(rbSymptomList.SelectedValue);
        //        var symptomList = db.tblSymptomsPrediction.Where(a => a.SymptomsID == symptomid && a.SymptomsPredictionID == symptomPredicationid).ToList().Count();
        //        // var aa = db.tblDiseasesPredictionList.Where(d => d.SymptomsPredictionID == symptomPredicationid).Count();
        //        if (symptomList != 0)
        //        {
        //            List<tblDiseasesPredictionList> aa = db.tblDiseasesPredictionList.Where(d => d.SymptomsPredictionID == symptomPredicationid).ToList();

        //            //List<tblParkingSpace> ps = db.tblParkingSpace.Where(a => a.ParkingSpace_Name == pid).ToList();
        //            if (aa != null)
        //            {
        //                for (int i = 1; i < aa.Count; i++)
        //                {
        //                    if (aa[i].DiseasesID != null)
        //                    {
        //                        var a = aa[i].DiseasesID;
        //                        List<tblDiseases> predictiondata = db.tblDiseases.Where(c => c.DiseasesID == a).ToList();
        //                        // var predictiondata = db.tblDiseases.Where(c => c.DiseasesID == aa);
        //                        if (predictiondata != null)
        //                        {

        //                            rpSearchDetail.DataSource = predictiondata;
        //                            rpSearchDetail.DataBind();
        //                        }
        //                    }
        //                }


        //            }
        //            else
        //            {
        //                lb1.Text = "Sorry, ParkingSpace are not available in this City";
        //            }


        //        }

        //    }
        //}
    }
}
