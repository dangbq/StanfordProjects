using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stanford_EntityFramework.Models
{
    public class Common
    {
        /// <summary>
        /// Khai báo 1 model của entity framework
        /// </summary>
        private static eNewsEntities _Entities = new eNewsEntities();

        public static eNewsEntities Entities
        {
            get { return Common._Entities; }
            set { Common._Entities = value; }
        }


    }
}