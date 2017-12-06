using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class RentalHistory : EntityBase
    {
        public int CustomerId { get; set; }
        public Customer Customer { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}