//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EEONow.Context.EntityContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmployeeLevel
    {
        public long EmployeeLevelId { get; set; }
        public string SupervisorPositionNumber { get; set; }
        public string PositionNumber { get; set; }
        public Nullable<int> EmployeeLevelNumber { get; set; }
        public Nullable<int> OrganizationId { get; set; }
        public Nullable<int> FileSubmissionId { get; set; }
        public Nullable<int> CreateUserId { get; set; }
        public Nullable<System.DateTime> CreateDateTime { get; set; }
        public Nullable<int> UpdateUserId { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}
