using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmartHealthPredication.Models;
using System.IO;

namespace SmartHealthPredication
{
    public partial class AddNewSymptoms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SymptomsName.Visible = true;
                SymptomsList.Visible = false;
                DiseasesName.Visible = false;
                rbSymptomList.Visible = false;
                rbDiseasesSelect.Visible = false;
                Confirm.Visible = false;
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


        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var symptomName = Convert.ToInt32(rbList.SelectedValue);
                if (symptomName != 0)
                {
                    lbSymptomName.Text = db.tblSymptomsList.Where(a => a.SymptomsID == symptomName).FirstOrDefault().SymptomsName;
                    lb1.Text = "Select Symptom from Existing List:";

                    SymptomsName.Visible = false;
                    DiseasesName.Visible = false;
                    SymptomsList.Visible = true;
                    rbSymptomList.Visible = true;

                }
            }
        }

        protected void rbSymptomList_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                var SymptomList = Convert.ToInt32(rbSymptomList.SelectedValue);
                if (SymptomList != 0)
                {
                    lbSymptomList.Text = db.tblSymptomsPrediction.Where(a => a.SymptomsPredictionID == SymptomList).FirstOrDefault().SymptomsPredictionName;

                    lb2.Text = "Select Diseases if Available:";
                    SymptomsName.Visible = false;
                    SymptomsList.Visible = false;
                    DiseasesName.Visible = true;
                    rbDiseasesSelect.Visible = true;
                }
            }
        }

        protected void rbDiseasesSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db1 = new SmartHealthPredicationEntities())
            {
                var SymptomName = lbSymptomList.Text;
                if (SymptomName != null && !string.IsNullOrWhiteSpace(SymptomName))
                {
                    var DiseasesName1 = Convert.ToInt32(rbDiseasesSelect.SelectedValue);
                    if (DiseasesName1 != 0)
                    {
                        var id1 = db1.tblSymptomsPrediction.Where(b => b.SymptomsPredictionName == SymptomName).FirstOrDefault().SymptomsPredictionID;
                        var id2 = db1.tblDiseasesPredictionList.Where(a => a.DiseasesID == DiseasesName1 && a.SymptomsPredictionID == id1).FirstOrDefault();
                        if (id2 == null)
                        {
                            Confirmation();
                            DiseasesName.Visible = false;
                            Confirm.Visible = true;
                        }
                        else
                        {
                            DiseasesName.Visible = false;
                            btnConfirm.Visible = false;
                            Confirm.Visible = true;
                            lbconfirm.Text = "Data Already exitist.";
                        }
                    }
                }
            }
        }



        protected void btnNext_Click(object sender, EventArgs e)
        {
            using (var db2 = new SmartHealthPredicationEntities())
            {
                if (tbSymptomsName.Text != null && !string.IsNullOrWhiteSpace(tbSymptomsName.Text))
                {
                    var id1 = db2.tblSymptomsList.Where(a => a.SymptomsName == tbSymptomsName.Text).FirstOrDefault();
                    if (id1 == null)
                    {
                        SymptomsName.Visible = false;
                        DiseasesName.Visible = false;
                        SymptomsList.Visible = true;
                        lbSymptomName.Text = tbSymptomsName.Text;
                    }
                    else
                    {
                        lbSymptomsName.Text = "Symptoms is Already is exitist.";
                    }
                }
                else
                {
                    lbSymptomsName.Text = "Please Enter Symptoms.";
                }
            }
        }

        protected void btnAddList_Click(object sender, EventArgs e)
        {
            using (var db2 = new SmartHealthPredicationEntities())
            {
                if (tbSymptoms1.Text != null && !string.IsNullOrWhiteSpace(tbSymptoms1.Text))
                {
                    var id2 = db2.tblSymptomsPrediction.Where(a => a.SymptomsPredictionName == tbSymptoms1.Text).FirstOrDefault();
                    if (id2 == null)
                    {
                        lb2.Text = "Select Diseases if Available:";
                        SymptomsName.Visible = false;
                        SymptomsList.Visible = false;
                        DiseasesName.Visible = true;
                        lbSymptomList.Text = tbSymptoms1.Text;
                        rbDiseasesSelect.Visible = true;
                    }
                    else
                    {
                        lbnext.Text = "Symptoms is Already is exitist.";
                    }
                }
                else
                {
                    lbSymptomList.Text = "Please Enter Symptoms List.";
                }
            }
        }

        protected void btnDiseases_Click(object sender, EventArgs e)
        {
            using (var db2 = new SmartHealthPredicationEntities())
            {
                if (tbDiseasesName1.Text != null && !string.IsNullOrWhiteSpace(tbDiseasesName1.Text))
                {
                    var id3 = db2.tblDiseases.Where(a => a.DiseasesName == tbDiseasesName1.Text).FirstOrDefault();
                    if (id3 == null)
                    {
                        AddDiseases();
                        Confirmation();
                        DiseasesName.Visible = false;
                        Confirm.Visible = true;
                    }
                    else
                    {
                        lbDiseases.Text = "This Diseases Name And Photo is Already Used Enter Other Diseases.";
                    }
                }
                else
                {
                    lbDiseases.Text = "Please Enter Diseases.";
                }
            }
        }



        protected void btnConfirm_Click(object sender, EventArgs e)
        {

            AddSymptoms();
            AddSymptomsList();
            AddDiseasesPredication();

        }

        //protected void btnDiseases_Click(object sender, EventArgs e)
        //{
        //    using (var db2 = new SmartHealthPredicationEntities())
        //    {
        //        var symptomList = Convert.ToInt32(rbSymptomList.SelectedValue);
        //        if (symptomList != 0)
        //        {
        //            tblSymptomsPrediction symptomid = db2.tblSymptomsPrediction.Where(a => a.SymptomsPredictionID == symptomList).FirstOrDefault();
        //            if (symptomid != null)
        //            {

        //                tblDiseases diseases = new tblDiseases();
        //                diseases.DiseasesName = tbDiseasesName1.Text;
        //                diseases.Status = "Active";

        //                if (DoctorAddDiseases.HasFile)
        //                {
        //                    try
        //                    {
        //                        string Designationfilename = Path.GetFileName(DoctorAddDiseases.FileName);
        //                        DoctorAddDiseases.SaveAs(Server.MapPath("~/assets/img/DiseasesPrediction/") + Designationfilename);
        //                        //   tbUpload.SaveAs(Path.Combine(Server.MapPath("~/images/UploadFile/"), tbUpload.FileName));
        //                        diseases.images = Designationfilename;
        //                        lbDiseases.Text = "Your Account will be Activet in next 24hour after verified by Admin via email_id";
        //                    }
        //                    catch (Exception ex)
        //                    {
        //                        lbDiseases.Text = "The file could not be uploaded. The following error occured: " + ex.Message;
        //                    }
        //                    db2.tblDiseases.Add(diseases);
        //                    db2.SaveChanges();
        //                }



        //            }

        //        }
        //        else
        //        {
        //            var Diseases = tbSymptoms1.Text;
        //            var Adddiseases = db2.tblSymptomsPrediction.Where(f => f.SymptomsPredictionName == Diseases).FirstOrDefault().SymptomsPredictionID;
        //            if (Adddiseases != 0)
        //            {
        //                tblDiseases diseases2 = new tblDiseases();
        //                diseases2.DiseasesName = tbDiseasesName1.Text;
        //                diseases2.Status = "Active";

        //                if (DoctorAddDiseases.HasFile)
        //                {
        //                    try
        //                    {
        //                        string Designationfilename = Path.GetFileName(DoctorAddDiseases.FileName);
        //                        DoctorAddDiseases.SaveAs(Server.MapPath("~/assets/img/DiseasesPrediction/") + Designationfilename);
        //                        //   tbUpload.SaveAs(Path.Combine(Server.MapPath("~/images/UploadFile/"), tbUpload.FileName));
        //                        diseases2.images = Designationfilename;
        //                        lbDiseases.Text = "Your Account will be Activet in next 24hour after verified by Admin via email_id";
        //                    }
        //                    catch (Exception ex)
        //                    {
        //                        lbDiseases.Text = "The file could not be uploaded. The following error occured: " + ex.Message;
        //                    }
        //                }

        //                db2.tblDiseases.Add(diseases2);
        //                db2.SaveChanges();

        //                tblDiseasesPredictionList dpl2 = new tblDiseasesPredictionList();
        //                dpl2.SymptomsPredictionID = symptomList;
        //                dpl2.DiseasesPredictionListID = db2.tblDiseases.Where(g => g.DiseasesName == tbDiseasesName1.Text).FirstOrDefault().DiseasesID;

        //                db2.tblDiseasesPredictionList.Add(dpl2);
        //                db2.SaveChanges();
        //            }

        //        }

        //        //SymptomsName.Visible = true;
        //        //SymptomsList.Visible = false;
        //        //DiseasesName.Visible = false;
        //        Confirmation();
        //        Confirm.Visible = true;
        //        lbDiseases.Text = "Please Enter Diseases...";
        //    }

        //}


        private void AddSymptoms()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                if (lbSymptomName.Text != null && !string.IsNullOrWhiteSpace(lbSymptomName.Text))
                {
                    var id1 = db.tblSymptomsList.Where(a => a.SymptomsName == lbSymptomName.Text).FirstOrDefault();
                    if (id1 == null)
                    {
                        tblSymptomsList sl = new tblSymptomsList();
                        sl.SymptomsName = lbSymptomName.Text;
                        sl.Status = "Active";

                        db.tblSymptomsList.Add(sl);
                        db.SaveChanges();
                    }
                }
            }
        }

        private void AddSymptomsList()
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                if (lbSymptom1.Text != null && !string.IsNullOrWhiteSpace(lbSymptom1.Text))
                {
                    var name = db.tblSymptomsList.Where(d => d.SymptomsName == lbSymptomName.Text).FirstOrDefault();
                    if (name != null)
                    {
                        var id2 = db.tblSymptomsPrediction.Where(a => a.SymptomsPredictionName == lbSymptomList.Text).FirstOrDefault();
                        if (id2 == null)
                        {
                            var id = name.SymptomsID;
                            tblSymptomsPrediction sp1 = new tblSymptomsPrediction();
                            sp1.SymptomsID = id;
                            sp1.SymptomsPredictionName = lbSymptomList.Text;
                            sp1.Status = "Active";

                            db.tblSymptomsPrediction.Add(sp1);
                            db.SaveChanges();
                        }
                    }
                }
                else
                {
                    var symptomName = Convert.ToInt32(rbList.SelectedValue);
                    if (symptomName != 0)
                    {
                        tblSymptomsList symptomid = db.tblSymptomsList.Where(a => a.SymptomsID == symptomName).FirstOrDefault();
                        if (symptomid != null)
                        {
                            tblSymptomsPrediction sp = new tblSymptomsPrediction();

                            if (lbSymptomName != null && !string.IsNullOrWhiteSpace(lbSymptomName.Text))
                            {
                                var id2 = db.tblSymptomsPrediction.Where(a => a.SymptomsPredictionName == lbSymptomList.Text).FirstOrDefault();
                                if (id2 == null)
                                {
                                    sp.SymptomsID = symptomid.SymptomsID;
                                    sp.SymptomsPredictionName = lbSymptomList.Text;
                                    sp.Status = "Active";

                                    db.tblSymptomsPrediction.Add(sp);
                                    db.SaveChanges();
                                }
                            }
                            else
                            {
                                lbnext.Text = "Please Enter Symptoms...";
                            }
                        }
                    }
                }
            }
        }

        private void AddDiseases()
        {
            using (var db2 = new SmartHealthPredicationEntities())
            {
                if (tbDiseasesName1.Text != null && !string.IsNullOrWhiteSpace(tbDiseasesName1.Text))
                {
                    var id3 = db2.tblDiseases.Where(a => a.DiseasesName == tbDiseasesName1.Text).FirstOrDefault();
                    if (id3 == null)
                    {
                        tblDiseases diseases = new tblDiseases();
                        diseases.DiseasesName = tbDiseasesName1.Text;
                        diseases.Status = "Active";

                        if (DoctorAddDiseases.HasFile)
                        {
                            try
                            {
                                string Designationfilename = Path.GetFileName(DoctorAddDiseases.FileName);
                                DoctorAddDiseases.SaveAs(Server.MapPath("~/assets/img/DiseasesPrediction/") + Designationfilename);
                                //   tbUpload.SaveAs(Path.Combine(Server.MapPath("~/images/UploadFile/"), tbUpload.FileName));
                                diseases.images = Designationfilename;
                                lbDiseases.Text = "Your Account will be Activet in next 24hour after verified by Admin via email_id";
                            }
                            catch (Exception ex)
                            {
                                lbDiseases.Text = "The file could not be uploaded. The following error occured: " + ex.Message;
                            }
                            db2.tblDiseases.Add(diseases);
                            db2.SaveChanges();
                        }
                    }
                    else
                    {
                        lbDiseases.Text = "This Diseases Name And Photo is Already Used Enter Other Diseases.";
                    }
                }

                else
                {
                    lbDiseases.Text = "Enter Diseases Name And Photo.";
                }
            }
        }

        private void AddDiseasesPredication()
        {
            using (var db1 = new SmartHealthPredicationEntities())
            {
                if (tbDiseasesName1.Text != null && !string.IsNullOrWhiteSpace(tbDiseasesName1.Text))
                {


                    var id1 = db1.tblDiseases.Where(g => g.DiseasesName == tbDiseasesName1.Text).FirstOrDefault();
                    if (id1 != null)
                    {
                        var id2 = db1.tblSymptomsPrediction.Where(b => b.SymptomsPredictionName == lbSymptomList.Text).FirstOrDefault().SymptomsPredictionID;
                        var data = db1.tblDiseasesPredictionList.Where(a => a.DiseasesID == id1.DiseasesID && a.SymptomsPredictionID == id2).FirstOrDefault();
                        if (data == null)
                        {
                            tblDiseasesPredictionList dpl = new tblDiseasesPredictionList();

                            dpl.SymptomsPredictionID = db1.tblSymptomsPrediction.Where(b => b.SymptomsPredictionName == lbSymptomList.Text).FirstOrDefault().SymptomsPredictionID;
                            dpl.DiseasesID = id1.DiseasesID;

                            db1.tblDiseasesPredictionList.Add(dpl);
                            db1.SaveChanges();
                            lbconfirm.Text = "New Symptoms Add Successfully.";
                        }
                        else
                        {
                            lbconfirm.Text = "Data Already exitist.";
                        }
                    }
                }
                else
                {
                    var data = Convert.ToInt32(rbDiseasesSelect.SelectedValue);
                    if (data != 0)
                    {
                        var dis = db1.tblDiseases.Where(a => a.DiseasesID == data).FirstOrDefault();
                        if (dis != null)
                        {
                            var id2 = db1.tblSymptomsPrediction.Where(b => b.SymptomsPredictionName == lbSymptomList.Text).FirstOrDefault().SymptomsPredictionID;
                            var data1 = db1.tblDiseasesPredictionList.Where(a => a.DiseasesID == dis.DiseasesID && a.SymptomsPredictionID == id2).FirstOrDefault();
                            if (data1 == null)
                            {
                                tblDiseasesPredictionList dp = new tblDiseasesPredictionList();
                                dp.SymptomsPredictionID = id2;
                                dp.DiseasesID = dis.DiseasesID;

                                db1.tblDiseasesPredictionList.Add(dp);
                                db1.SaveChanges();
                                lbconfirm.Text = "New Symptoms Add Successfully.";
                            }
                            else
                            {
                                lbconfirm.Text = "Data Already exitist.";
                            }
                        }

                    }
                }
            }
        }

        private void Confirmation()
        {

            using (var db1 = new SmartHealthPredicationEntities())
            {
                if (lbSymptomName.Text != null && !string.IsNullOrWhiteSpace(lbSymptomName.Text) && lbSymptomList.Text != null && !string.IsNullOrWhiteSpace(lbSymptomList.Text))
                {
                    lbSymptom1.Text = "Symptom Name Is:- " + lbSymptomName.Text;
                    lbSymptom2.Text = "Symptom List Name Is:- " + lbSymptomList.Text;

                }
                if (tbDiseasesName1.Text != null && !string.IsNullOrWhiteSpace(tbDiseasesName1.Text))
                {
                    lbSymptom3.Text = "Diseases Name Is:- " + tbDiseasesName1.Text + "<br/><br/>Click Confirm to Add this Diseases.<br/>";
                }
                else
                {
                    var Diseases1 = Convert.ToInt32(rbDiseasesSelect.SelectedValue);
                    if (Diseases1 != 0)
                    {
                        lbSymptom3.Text = "Diseases Name Is:- " + db1.tblDiseases.Where(c => c.DiseasesID == Diseases1).FirstOrDefault().DiseasesName + "<br/><br/> Click Confirm to Add this Diseases.<br/>";
                    }
                }
            }
        }



    }
}