using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class Address : EntityBase
    {
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string City { get; set; }
        public int StateId { get; set; }
        public string Zipcode { get; set; }
        public int AddressTypeId { get; set; }
    }
}
