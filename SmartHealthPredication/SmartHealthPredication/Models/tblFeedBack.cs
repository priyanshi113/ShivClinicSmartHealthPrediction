//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SmartHealthPredication.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblFeedBack
    {
        public int FeedBackID { get; set; }
        public Nullable<int> PatientID { get; set; }
        public string PatientName { get; set; }
        public Nullable<int> DoctorID { get; set; }
        public string DoctorName { get; set; }
        public string Rating { get; set; }
        public string Feedback { get; set; }
        public string Status { get; set; }
    
        public virtual tblUserRegistration tblUserRegistration { get; set; }
        public virtual tblUserRegistration tblUserRegistration1 { get; set; }
    }
}
