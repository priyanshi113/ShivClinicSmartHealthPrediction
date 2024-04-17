using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;

namespace SmartHealthPredication.Helper
{
    public class MailHelper
    {
        public MailHelper() { }

        public static void SendMailMessage(string subject, string body, string receiverEmail)
        {
            // Create a new MailMessage instance
            MailMessage objMailMsg = new MailMessage();

            // Set the sender email address
            objMailMsg.From = new MailAddress(ConfigHelper.SenderMail);

            // Add recipient email address
            objMailMsg.To.Add(new MailAddress(receiverEmail));

            // Set email subject and body
            objMailMsg.Subject = subject;
            objMailMsg.Body = body;
            objMailMsg.IsBodyHtml = true; // Indicate that the body is HTML
            objMailMsg.Priority = MailPriority.Normal;
            objMailMsg.BodyEncoding = System.Text.Encoding.UTF8;

            // Create an SMTP client
            SmtpClient mSmtpClient = new SmtpClient();

            // Set SMTP server details
            mSmtpClient.Host = ConfigHelper.MailHost;
            mSmtpClient.Port = Convert.ToInt32(ConfigHelper.MailPort);

            // Set SMTP credentials
            mSmtpClient.Credentials = new System.Net.NetworkCredential(ConfigHelper.SMTPUser, ConfigHelper.SMTPPass);

            // Enable SSL/TLS
            mSmtpClient.EnableSsl = true;

            try
            {
                // Send the email
                mSmtpClient.Send(objMailMsg);
                Console.WriteLine("Email sent successfully!");
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Console.WriteLine($"Failed to send email: {ex.Message}");
            }
        }


    }
}
