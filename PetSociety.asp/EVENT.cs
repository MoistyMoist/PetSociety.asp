//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PetSociety.asp
{
    using System;
    using System.Collections.Generic;
    
    public partial class EVENT
    {
        public EVENT()
        {
            this.ATTENDEEs = new HashSet<ATTENDEE>();
            this.GALLERies = new HashSet<GALLERY>();
        }
    
        public int EventID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public System.DateTime StartDateTime { get; set; }
        public System.DateTime EndDateTime { get; set; }
        public System.DateTime DateTimeCreated { get; set; }
        public double X { get; set; }
        public double Y { get; set; }
        public Nullable<int> Status { get; set; }
        public Nullable<int> Privacy { get; set; }
        public Nullable<int> GalleryID { get; set; }
        public int UserID { get; set; }
    
        public virtual ICollection<ATTENDEE> ATTENDEEs { get; set; }
        public virtual GALLERY GALLERY { get; set; }
        public virtual USER USER { get; set; }
        public virtual ICollection<GALLERY> GALLERies { get; set; }
    }
}
