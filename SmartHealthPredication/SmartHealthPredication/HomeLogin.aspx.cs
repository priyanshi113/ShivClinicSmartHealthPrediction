using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.IO;
using System.Text;
using System.Threading;
using SmartHealthPredication.Helper;
using SmartHealthPredication.Models;

namespace SmartHealthPredication
{
    public partial class HomeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Status.Visible = false;
                LoginPatient.Visible = true;
                LoginDoctor.Visible = false;
                login.Visible = true;
                Forgot.Visible = false;
                signup.Visible = false;

            }
        }

        //PATIENT LOGIN PAGE
        protected void lnkPatientLogin_Click(object sender, EventArgs e)
        {

            LoginDoctor.Visible = false;
            LoginPatient.Visible = true;
            login.Visible = true;
            Forgot.Visible = false;
            signup.Visible = false;
           

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            login.Visible = true;
            signup.Visible = false;
            Forgot.Visible = false;
        }

        protected void SignUP_Click(object sender, EventArgs e)
        {
            login.Visible = false;
            Forgot.Visible = false;
            signup.Visible = true;
        }

        protected void ForgotPassword_Click(object sender, EventArgs e)
        {
            login.Visible = false;
            signup.Visible = false;
            Forgot.Visible = true;
        }



        //DOCTOR LOGIN PAGE
        protected void lnkDoctorLogin_Click(object sender, EventArgs e)
        {
            LoginPatient.Visible = false;
            DoctorRegistrationPage.Visible = false;
            DoctorForgotPasswordPage.Visible = false;
            DoctorLoginPage.Visible = true;
            LoginDoctor.Visible = true;


        }

        protected void lnkDoctorLoginpage_Click(object sender, EventArgs e)
        {

            DoctorRegistrationPage.Visible = false;
            DoctorForgotPasswordPage.Visible = false;
            DoctorLoginPage.Visible = true;
        }

        protected void lnkDoctorSignUppage_Click(object sender, EventArgs e)
        {
            DoctorLoginPage.Visible = false;
            DoctorForgotPasswordPage.Visible = false;
            DoctorRegistrationPage.Visible = true;

        }

        protected void lnkDocotorForgotpage_Click(object sender, EventArgs e)
        {
            DoctorRegistrationPage.Visible = false;
            DoctorLoginPage.Visible = false;
            DoctorForgotPasswordPage.Visible = true;
        }

        //Patient SignUp
        protected void btnPatientSignup_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                tblUserRegistration signup = new tblUserRegistration();

                signup.RoleID = 1;
                signup.UserFullName = PatientFullName.Text;
                signup.EmailID = PatientEmailID.Text;
                signup.MoblieNumber = PatientMobileNo.Text;
                signup.AdharCardNumber = PatientAdharCardNo.Text;
                signup.Address = PatientAddress.Text;
                signup.City = ddlPatientCity.SelectedValue;
                signup.DateOfBirth = Convert.ToDateTime(PatientBirthdate.Text);
                signup.Password = PatientPassword.Text;
                signup.Status = "Active";


                tblUserRegistration ru = db.tblUserRegistration.Where(x => x.EmailID == PatientEmailID.Text).FirstOrDefault();
                if (ru != null)
                {
                    if (ru.EmailID.ToLower() == PatientEmailID.Text.ToLower())
                    {
                       
                        lb2.Text = "This Email is already Used Please Enter Diffrent Email_ID";
                    }
                }
                else
                {
                    db.tblUserRegistration.Add(signup);
                    db.SaveChanges();
                    //lb2.Text = "Successfully Sign Up...";
                    Status.Visible = true;
                    lbStatus.Text = "Successfully Sign Up...";
                }
            }

            //Status.Visible = true;
            //lbStatus.Text = "Your Password Details Sent to your mail";
            
            signup.Visible = false;
            Forgot.Visible = false;

        }

        //Doctor SignUp
        protected void btnDoctorRegistration_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                tblUserRegistration Doctorsignup = new tblUserRegistration();

                Doctorsignup.RoleID = 2;
                Doctorsignup.UserFullName = DoctorSingupFullName.Text;
                Doctorsignup.EmailID = DoctorSingupEmailID.Text;
                Doctorsignup.MoblieNumber = DoctorSingupMobileNo.Text;
                Doctorsignup.AdharCardNumber = DoctorSingupAdharCardNo.Text;
                Doctorsignup.Address = DoctorSingupAddress.Text;
                Doctorsignup.City = ddlDoctorSingupCity.SelectedValue;
                Doctorsignup.DateOfBirth = Convert.ToDateTime(DoctorSingupBirthdate.Text);
                Doctorsignup.Password = DoctorSingupPassword.Text;
                Doctorsignup.Status = "Pending";

                if (DoctorSignupDesignation.HasFile)
                {
                    try
                    {
                        string Designationfilename = Path.GetFileName(DoctorSignupDesignation.FileName);
                        DoctorSignupDesignation.SaveAs(Server.MapPath("~/assets/img/DoctorDesignation/") + Designationfilename);
                        //   tbUpload.SaveAs(Path.Combine(Server.MapPath("~/images/UploadFile/"), tbUpload.FileName));
                        Doctorsignup.Designation = Designationfilename;
                        lb5.Text = "Your Account will be Activet in next 24hour after verified by Admin via email_id";
                    }
                    catch (Exception ex)
                    {
                        lb5.Text = "The file could not be uploaded. The following error occured: " + ex.Message;
                    }
                }

                tblUserRegistration ru = db.tblUserRegistration.Where(x => x.EmailID == PatientEmailID.Text).FirstOrDefault();
                if (ru != null)
                {
                    if (ru.EmailID.ToLower() == PatientEmailID.Text.ToLower())
                    {
                        lb5.Text = "This Email is already Used Please Enter Diffrent Email_ID";
                    }
                }
                else
                {
                    db.tblUserRegistration.Add(Doctorsignup);
                    db.SaveChanges();
                    Status.Visible = true;
                    lbStatus.Text = "Successfully Sign Up...";
                }
            }
            DoctorRegistrationPage.Visible = false;
            DoctorForgotPasswordPage.Visible = false;
          //  DoctorLoginPage.Visible = true;

        }



        //Patient Login
        protected void btnPatientLogin_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                tblUserRegistration login = db.tblUserRegistration.Where(a => a.EmailID == PatientLoginEmailID.Text && a.Password == PatientloginPassword.Text && a.RoleID == 1).FirstOrDefault();
                if (login != null)
                {
                    SessionManager.setPaitentID(login.UserID);
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
                    Response.Cache.SetNoStore();
                    Response.Redirect("PaitentDiseasePredication");
                }
                else
                {
                    lb1.Text = "Email ID or Password is Incorrect.  ";
                }
            }
        }

        //Doctor Login
        protected void btnDocotrLoing_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {
                tblUserRegistration login = db.tblUserRegistration.Where(a => a.EmailID == DoctorLoginEmail.Text && a.Password == DoctorLoginPassword.Text && a.RoleID == 2 && a.Status == "Active").FirstOrDefault();
                if (login != null)
                {
                    SessionManager.setDoctorID(login.UserID);
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
                    Response.Cache.SetNoStore();
                    Response.Redirect("DoctorAppointmentScheduleList");
                }
                else
                {
                    lb4.Text = "Your Account is not Activte please contact to servicer Provieder.";
                }
            }
        }



        //Patient ForgotPassword
        protected void btnPatientForgotPassword_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                tblUserRegistration ur = db.tblUserRegistration.Where(a => a.EmailID == ForgotEmail.Text && a.RoleID == 1).FirstOrDefault();
                if (ur != null)
                {
                    lb3.Text = "Your Password Details Sent to your mail";

                    StringBuilder sb = new StringBuilder();

                    sb.Append("Hello Sir, " + ur.UserFullName + " <br/>");
                    sb.Append("Your Email ID is: <b>" + ur.EmailID + "</b> <br/>");
                    sb.Append("Your Password is: <b>" + ur.Password + "</b> <br/>");
                    sb.Append("Click on the link to open your account: http://localhost:51229/PatientLogin  <br/>");
                    sb.Append("<br/><br/>");
                    sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                    sb.Append("The Smart Health Prediction Team");

                    new Thread(() => { MailHelper.SendMailMessage("Forgot Passwor", sb.ToString(), ur.EmailID); }).Start();
                }
                else
                {
                    lb3.Text = "The Email you entered not exists.";
                }
            }
        }

        //Doctor ForgotPassword
        protected void btnDoctorForgotPassword_Click(object sender, EventArgs e)
        {
            using (var db = new SmartHealthPredicationEntities())
            {

                tblUserRegistration ur = db.tblUserRegistration.Where(a => a.EmailID == DoctorForgotPassword.Text && a.RoleID == 2).FirstOrDefault();
                if (ur != null)
                {
                   

                    StringBuilder sb = new StringBuilder();

                    sb.Append("Hello Dr." + ur.UserFullName + " <br/>");
                    sb.Append("Your Email ID is: <b>" + ur.EmailID + "</b> <br/>");
                    sb.Append("Your Password is: <b>" + ur.Password + "</b> <br/>");
                    sb.Append("Click on the link to open your account:http://www.SmartHealthPrediction.somee.com/PatientLogin  <br/>");
                    sb.Append("<br/><br/>");
                    sb.Append("Thanks for using Smart Health Prediction!<br/> ");
                    sb.Append("The Smart Health Prediction Team");

                    new Thread(() => { MailHelper.SendMailMessage("Forgot Passwor", sb.ToString(), ur.EmailID); }).Start();
                    lb6.Text = "Your Password Details Sent to your mail";

                    Status.Visible = true;
                    lbStatus.Text = "Your Password Details Sent to your mail";
                }
                else
                {
                   
                    lb6.Text = "The Email you entered not exists.";
                }
            }

        }
    }
}