using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class PaymentInformation : EntityBase
    {
        public int CustomerId { get; set; }
        public Customer Customer { get; set; }
    }
}
