//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Stanford_EntityFramework.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class stanfUser
    {
        public stanfUser()
        {
            this.stanfArticles = new HashSet<stanfArticle>();
        }
    
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FullName { get; set; }
        public string Avatar { get; set; }
        public Nullable<int> Sex { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public Nullable<bool> IsAdmin { get; set; }
        public Nullable<System.DateTime> DateCreate { get; set; }
        public Nullable<System.DateTime> DateLastUpdate { get; set; }
        public Nullable<bool> Approved { get; set; }
        public Nullable<System.DateTime> DateApproved { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<stanfArticle> stanfArticles { get; set; }
    }
}
