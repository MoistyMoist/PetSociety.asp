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
    
    public partial class USER
    {
        public USER()
        {
            this.ATTENDEEs = new HashSet<ATTENDEE>();
            this.EVENTs = new HashSet<EVENT>();
            this.FRIEND_LIST = new HashSet<FRIEND_LIST>();
            this.FRIEND_LIST1 = new HashSet<FRIEND_LIST>();
            this.FRIEND_REQUEST = new HashSet<FRIEND_REQUEST>();
            this.FRIEND_REQUEST1 = new HashSet<FRIEND_REQUEST>();
            this.GALLERies = new HashSet<GALLERY>();
            this.LOCATIONs = new HashSet<LOCATION>();
            this.LOSTs = new HashSet<LOST>();
            this.PETs = new HashSet<PET>();
            this.REVIEWs = new HashSet<REVIEW>();
            this.STRAYs = new HashSet<STRAY>();
        }
    
        public int UserID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Birthday { get; set; }
        public string Password { get; set; }
        public string Address { get; set; }
        public string Biography { get; set; }
        public string Privicy { get; set; }
        public string Sex { get; set; }
        public string Contact { get; set; }
        public string Credibility { get; set; }
        public Nullable<double> X { get; set; }
        public Nullable<double> Y { get; set; }
        public string ProfileImageURL { get; set; }
    
        public virtual ICollection<ATTENDEE> ATTENDEEs { get; set; }
        public virtual ICollection<EVENT> EVENTs { get; set; }
        public virtual ICollection<FRIEND_LIST> FRIEND_LIST { get; set; }
        public virtual ICollection<FRIEND_LIST> FRIEND_LIST1 { get; set; }
        public virtual ICollection<FRIEND_REQUEST> FRIEND_REQUEST { get; set; }
        public virtual ICollection<FRIEND_REQUEST> FRIEND_REQUEST1 { get; set; }
        public virtual ICollection<GALLERY> GALLERies { get; set; }
        public virtual ICollection<LOCATION> LOCATIONs { get; set; }
        public virtual ICollection<LOST> LOSTs { get; set; }
        public virtual ICollection<PET> PETs { get; set; }
        public virtual ICollection<REVIEW> REVIEWs { get; set; }
        public virtual ICollection<STRAY> STRAYs { get; set; }
    }
}
