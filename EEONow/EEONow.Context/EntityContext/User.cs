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
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.EmailAuthenticateLogs = new HashSet<EmailAuthenticateLog>();
            this.LoginDeviceInfoes = new HashSet<LoginDeviceInfo>();
        }
    
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string SecurityToken { get; set; }
        public string PasswordSalt { get; set; }
        public string Password { get; set; }
        public Nullable<System.DateTime> LastLoginDateTime { get; set; }
        public bool Active { get; set; }
        public int CreateUserId { get; set; }
        public System.DateTime CreateDateTime { get; set; }
        public Nullable<int> UpdateUserId { get; set; }
        public Nullable<System.DateTime> UpdateDateTime { get; set; }
    
        public virtual UserRole UserRole { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EmailAuthenticateLog> EmailAuthenticateLogs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LoginDeviceInfo> LoginDeviceInfoes { get; set; }
    }
}
