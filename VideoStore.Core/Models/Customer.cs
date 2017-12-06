using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class Customer : EntityBase
    {
        public string EmailAddress { get; set; }
        public string Password { get; set; }
    }
}
