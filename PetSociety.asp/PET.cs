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
    
    public partial class PET
    {
        public PET()
        {
            this.GALLERies = new HashSet<GALLERY>();
            this.LOSTs = new HashSet<LOST>();
        }
    
        public int PetID { get; set; }
        public string Name { get; set; }
        public string Breed { get; set; }
        public string Sex { get; set; }
        public string Type { get; set; }
        public string Biography { get; set; }
        public string Age { get; set; }
        public int UserID { get; set; }
        public Nullable<int> GalleryID { get; set; }
        public string ProfileImageURL { get; set; }
        public Nullable<System.DateTime> DateTimeCreated { get; set; }
    
        public virtual ICollection<GALLERY> GALLERies { get; set; }
        public virtual GALLERY GALLERY { get; set; }
        public virtual ICollection<LOST> LOSTs { get; set; }
        public virtual USER USER { get; set; }
    }
}
