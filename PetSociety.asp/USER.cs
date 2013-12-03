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
    using System.Runtime.Serialization;

    [DataContract(IsReference = true)]
    public partial class USER
    {
        public USER()
        {
            this.ATTENDEEs = new HashSet<ATTENDEE>();
            this.EVENTs = new HashSet<EVENT>();
            this.FRIEND_LIST = new HashSet<FRIEND_LIST>();
            this.FRIEND_REQUEST = new HashSet<FRIEND_REQUEST>();
            this.GALLERies = new HashSet<GALLERY>();
            this.LOCATIONs = new HashSet<LOCATION>();
            this.LOSTs = new HashSet<LOST>();
            this.PETs = new HashSet<PET>();
            this.REVIEWs = new HashSet<REVIEW>();
            this.STRAYs = new HashSet<STRAY>();
        }

        [DataMember(Order = 1)]
        public int UserID { get; set; }
        [DataMember(Order = 2)]
        public string Name { get; set; }
        [DataMember(Order = 3)]
        public string Email { get; set; }
        [DataMember(Order = 4)]
        public string Birthday { get; set; }
        [DataMember(Order = 5)]
        public string Password { get; set; }
        [DataMember(Order = 6)]
        public string Address { get; set; }
        [DataMember(Order = 7)]
        public string Biography { get; set; }
        [DataMember(Order = 8)]
        public string Privicy { get; set; }
        [DataMember(Order = 9)]
        public string Sex { get; set; }
        [DataMember(Order = 10)]
        public string Contact { get; set; }
        [DataMember(Order = 11)]
        public string Credibility { get; set; }
        [DataMember(Order = 12)]
        public string X { get; set; }
        [DataMember(Order = 13)]
        public string Y { get; set; }
        [DataMember(Order = 14)]
        public Nullable<int> ProfileImageID { get; set; }

        [DataMember(Order = 15)]
        public virtual ICollection<ATTENDEE> ATTENDEEs { get; set; }
        [DataMember(Order = 16)]
        public virtual ICollection<EVENT> EVENTs { get; set; }
        [DataMember(Order = 17)]
        public virtual ICollection<FRIEND_LIST> FRIEND_LIST { get; set; }
        [DataMember(Order = 18)]
        public virtual ICollection<FRIEND_REQUEST> FRIEND_REQUEST { get; set; }
        [DataMember(Order = 19)]
        public virtual ICollection<GALLERY> GALLERies { get; set; }
        [DataMember(Order = 20)]
        public virtual ICollection<LOCATION> LOCATIONs { get; set; }
        [DataMember(Order = 21)]
        public virtual ICollection<LOST> LOSTs { get; set; }
        [DataMember(Order = 22)]
        public virtual ICollection<PET> PETs { get; set; }
        [DataMember(Order = 23)]
        public virtual PIN PIN { get; set; }
        [DataMember(Order = 24)]
        public virtual ICollection<REVIEW> REVIEWs { get; set; }
        [DataMember(Order = 25)]    
        public virtual ICollection<STRAY> STRAYs { get; set; }
    }

}
