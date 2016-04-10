using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;


namespace Stanford_ArticleManager.Models
{
    public class stanfArticle
    {
        public int Id { get; set; }

        public string Title { get; set; }

        [Display(Name="Mô tả")]
        [Required(ErrorMessage = "Bạn cần phải nhập mô tả")]
        public string Description { get; set; }

        [AllowHtml]
        public string ArticleContent { get; set; }

        public string ImageName { get; set; }

        public DateTime DateCreated { get; set; }

        public int CategoryId { get; set; }
    }
}