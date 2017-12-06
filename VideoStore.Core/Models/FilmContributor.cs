using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class FilmContributor : EntityBase
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int FilmContributorTypeId { get; set; }
        public FilmContributorType FilmContributorType { get; set; }
    }
}