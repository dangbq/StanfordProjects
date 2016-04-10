using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stanford_WorkingwithRazor.Models
{
    public class Common
    {
        private static eNewsEntities _Entities = new eNewsEntities();

        public static eNewsEntities Entities
        {
            get { return _Entities; }
            set { _Entities = value; }
        }
    }
}