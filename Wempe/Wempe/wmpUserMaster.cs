//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wempe
{
    using System;
    using System.Collections.Generic;
    
    public partial class wmpUserMaster
    {
        public wmpUserMaster()
        {
            this.wmpCompanyMasters = new HashSet<wmpCompanyMaster>();
        }
    
        public long UserID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Role { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> LastUpdate { get; set; }
        public Nullable<long> UpdateBy { get; set; }
        public Nullable<long> OwnerID { get; set; }
        public Nullable<bool> IsMainUser { get; set; }
    
        public virtual ICollection<wmpCompanyMaster> wmpCompanyMasters { get; set; }
    }
}