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
    
    public partial class USCensus_MinorOccupationGroups
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USCensus_MinorOccupationGroups()
        {
            this.USCensus_BoardingOccupationGroups = new HashSet<USCensus_BoardingOccupationGroups>();
        }
    
        public int MinorOccupationGroupID { get; set; }
        public string Code { get; set; }
        public string Description { get; set; }
        public bool Active { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<USCensus_BoardingOccupationGroups> USCensus_BoardingOccupationGroups { get; set; }
        public virtual USCensus_MajorOccupationGroups USCensus_MajorOccupationGroups { get; set; }
    }
}
