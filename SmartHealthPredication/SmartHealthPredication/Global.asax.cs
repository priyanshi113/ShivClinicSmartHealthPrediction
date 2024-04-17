using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace SmartHealthPredication
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Register routes
            RouteTable.Routes.MapPageRoute("Home", "Home", "~/Home.aspx");
            RouteTable.Routes.MapPageRoute("HomeContactUs", "HomeContactUs", "~/HomeContactUs.aspx");
            RouteTable.Routes.MapPageRoute("HomeAdminLogin", "AdminLogin", "~/HomeAdminLogin.aspx");
            RouteTable.Routes.MapPageRoute("HomeLogin", "HomeLogin", "~/HomeLogin.aspx");
            RouteTable.Routes.MapPageRoute("PaitentAppointmentScheduleStatus", "PaitentAppointmentScheduleStatus", "~/PaitentAppointmentScheduleStatus.aspx");
            RouteTable.Routes.MapPageRoute("PaitentDiseasePredication", "PaitentDiseasePredication", "~/PaitentDiseasePredication.aspx");
            RouteTable.Routes.MapPageRoute("PatientLogin", "PatientLogin", "~/PatientLogin.aspx");
            RouteTable.Routes.MapPageRoute("AddNewSymptoms", "AddNewSymptoms", "~/AddNewSymptoms.aspx");
            RouteTable.Routes.MapPageRoute("AdminPaitentList", "AdminPaitentList", "~/AdminPaitentList.aspx");
            RouteTable.Routes.MapPageRoute("DoctorAppointmentScheduleList", "DoctorAppointmentScheduleList", "~/DoctorAppointmentScheduleList.aspx");
            RouteTable.Routes.MapPageRoute("Error404", "Error404", "~/Error404.aspx");

        }
    }
}