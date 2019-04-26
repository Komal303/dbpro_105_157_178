using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem.Models
{
    public class EventViewModel
    {
        public int id { get; set; }

        [Required]
        public string name { get; set; }

        [Required]
        public string description { get; set; }

        [Required]
        public string contact { get; set; }

        [Required]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        [DataType(DataType.Date)]
        public DateTime date { get; set; }

        [Required]
        [DataType(DataType.Time)]
        public DateTime startTime { get; set; }

        [Required]
        [DataType(DataType.Time)]
        public DateTime endTime { get; set; }

        [Required]
        [DataType(DataType.Currency)]
        public string charges { get; set; }

        public static List<EventViewModel> EventList = new List<EventViewModel>();
        public static EventViewModel SampleEvent = new EventViewModel();
    }
}