using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartHealthPredication.Helper
{
    public class SessionManager
    {
        public static HttpContext getCurrentContext()
        {
            return System.Web.HttpContext.Current;
        }


        internal static void setAdminID(int AdminID)
        {
            var dc = getCurrentContext();
            if (AdminID != 0)
            {
                dc.Session[Constant.AdminID] = AdminID;
                dc.Session.Timeout = 300;
            }
        }
        public static int getAdminID()
        {
            var dc = getCurrentContext();
            if (dc.Session[Constant.AdminID] != null)
                return Convert.ToInt32(dc.Session[Constant.AdminID]);
            else
                return 0;
        }


        internal static void setPaitentID(int PaitentID)
        {
            var dc = getCurrentContext();
            if (PaitentID != 0)
            {
                dc.Session[Constant.PaitentID] = PaitentID;
                dc.Session.Timeout = 300;
            }
        }
        public static int getPaitentID()
        {
            var dc = getCurrentContext();
            if (dc.Session[Constant.PaitentID] != null)
                return Convert.ToInt32(dc.Session[Constant.PaitentID]);
            else
                return 0;
        }


        internal static void setDoctorID(int DoctorID)
        {
            var dc = getCurrentContext();
            if (DoctorID != 0)
            {
                dc.Session[Constant.DoctorID] = DoctorID;
                dc.Session.Timeout = 300;
            }
        }
        public static int getDoctorID()
        {
            var dc = getCurrentContext();
            if (dc.Session[Constant.DoctorID] != null)
                return Convert.ToInt32(dc.Session[Constant.DoctorID]);
            else
                return 0;
        }

        internal static void setDiseasesPredictionListID(int DiseasesPredictionListID)
        {
            var dc = getCurrentContext();
            if (DiseasesPredictionListID != 0)
            {
                dc.Session[Constant.DiseasesPredictionListID] = DiseasesPredictionListID;
                dc.Session.Timeout = 300;
            }

        }
        public static int getParkSpaceID()
        {
            var hc = getCurrentContext();
            if (hc.Session[Constant.DiseasesPredictionListID] != null)
                return Convert.ToInt32(hc.Session[Constant.DiseasesPredictionListID]);
            else
                return 0;
        }

        internal static void setDiseasesID(int DiseasesID)
        {
            var dc = getCurrentContext();
            if (DiseasesID != 0)
            {
                dc.Session[Constant.DiseasesID] = DiseasesID;
                dc.Session.Timeout = 300;
            }
        }
        public static int getDiseasesID()
        {
            var dc = getCurrentContext();
            if (dc.Session[Constant.DiseasesID] != null)
                return Convert.ToInt32(dc.Session[Constant.DiseasesID]);
            else
                return 0;
        }


        internal static void setSymptomsPredictionID(int SymptomsPredictionID)
        {
            var dc = getCurrentContext();
            if (SymptomsPredictionID != 0)
            {
                dc.Session[Constant.SymptomsPredictionID] = SymptomsPredictionID;
                dc.Session.Timeout = 300;
            }
        }
        public static int getSymptomsPredictionID()
        {
            var dc = getCurrentContext();
            if (dc.Session[Constant.SymptomsPredictionID] != null)
                return Convert.ToInt32(dc.Session[Constant.SymptomsPredictionID]);
            else
                return 0;
        }

        internal static void setSymptomsID(int SymptomsID)
        {
            var dc = getCurrentContext();
            if (SymptomsID != 0)
            {
                dc.Session[Constant.SymptomsID] = SymptomsID;
                dc.Session.Timeout = 300;
            }
        }
        public static int getSymptomsID()
        {
            var dc = getCurrentContext();
            if (dc.Session[Constant.SymptomsID] != null)
                return Convert.ToInt32(dc.Session[Constant.SymptomsID]);
            else
                return 0;
        }

        public static void endSmartSession()
        {
            var hc = getCurrentContext();
            hc.Session.Clear();
            hc.Session.Abandon();
            hc.Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
        }
    }
}