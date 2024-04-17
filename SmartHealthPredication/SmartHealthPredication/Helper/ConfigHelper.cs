using System.Configuration;

namespace SmartHealthPredication.Helper
{
    public class ConfigHelper
    {
        public static string ConnectionString {
            get {
                return ConfigurationManager.ConnectionStrings["SmartHealthPredicationEntities"].ConnectionString;
            }
        }

        public static string ErrorLogPath {
            get
            {
                string addr = ConfigurationManager.AppSettings["ErrorLogPath"];
                if (addr.EndsWith(@"\"))
                {
                    addr = addr.TrimEnd(new char[] { '\\' });
                }
                return addr;
            }
        }

        public static string InvoiceDownload
        {
            get
            {
                string addr = ConfigurationManager.AppSettings["InvoiceDownload"];
                if (addr.EndsWith(@"\"))
                {
                    addr = addr.TrimEnd(new char[] { '\\' });
                }
                return addr;
            }
        }
        /// <summary>
        /// To Get NotificationFrom Mail
        /// </summary>
        public static string NotificationFromEmail
        {
            get
            {
                return ConfigurationManager.AppSettings["NotificationFromEmail"];
            }
        }

        public static string NotificationToEmail
        {
            get
            {
                return ConfigurationManager.AppSettings["NotificationToEmail"];
            }
        }

        /// <summary>
        /// To Get NotificationEmail Path
        /// </summary>
        public static string NotificationEmailPath
        {
            get
            {
                return ConfigurationManager.AppSettings["NotificationEmailPath"];
            }
        }

        /// <summary>
        /// To Get Temp Folder Path
        /// </summary>
        public static string TempFolder
        {
            get
            {
                return ConfigurationManager.AppSettings["TempFolder"];
            }
        }

        /// <summary>
        /// To Get Mail Host
        /// </summary>
        public static string MailHost
        {
            get
            {
                return ConfigurationManager.AppSettings["MailHost"];
            }
        }

        public static string SMTPUser
        {
            get
            {
                return ConfigurationManager.AppSettings["SMTPUser"];
            }
        }

        public static string SMTPPass
        {
            get
            {
                return ConfigurationManager.AppSettings["SMTPPass"];
            }
        }

        /// <summary>
        /// To Get Sender Mail
        /// </summary>
        public static string SenderMail
        {
            get
            {
                return ConfigurationManager.AppSettings["SenderMail"];
            }
        }

        /// <summary>
        /// To Get Reciever Mail
        /// </summary>
        public static string ReceiverMail
        {
            get
            {
                return ConfigurationManager.AppSettings["ReceiverMail"];
            }
        }

        /// <summary>
        /// To Get Mail POrt
        /// </summary>
        public static string MailPort
        {
            get
            {
                return ConfigurationManager.AppSettings["MailPort"];
            }
        }

        /// <summary>
        /// To Get Email Key
        /// </summary>
        public static string EmailKey
        {
            get
            {
                return ConfigurationManager.AppSettings["EmailKey"];
            }
        }
    }
}
