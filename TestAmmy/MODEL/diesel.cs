//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MODEL
{
    using System;
    using System.Collections.Generic;
    
    public partial class diesel
    {
        public System.Guid randomID { get; set; }
        public System.DateTime date { get; set; }
        public Nullable<float> purchased { get; set; }
        public Nullable<float> DGSet { get; set; }
        public Nullable<float> Vehicle { get; set; }
        public Nullable<float> OtherPurpose { get; set; }
        public Nullable<float> Runningtime { get; set; }
        public float Dieselcost { get; set; }
        public int permission_user_id { get; set; }
        public int permission_building_buidlingid { get; set; }
        public string permission_building_company_companycode { get; set; }
        public int permission_energy_energy_id { get; set; }
    
        public virtual permission permission { get; set; }
    }
}