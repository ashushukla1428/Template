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
    
    public partial class FileSubmissionStatu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FileSubmissionStatu()
        {
            this.FileSubmissions = new HashSet<FileSubmission>();
        }
    
        public int FileSubmissionStatusId { get; set; }
        public string Status { get; set; }
        public string Description { get; set; }
        public bool Active { get; set; }
        public int CreateUserId { get; set; }
        public System.DateTime CreateDateTime { get; set; }
        public Nullable<int> UpdateUserId { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FileSubmission> FileSubmissions { get; set; }
    }
}
