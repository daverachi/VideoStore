using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemPurchaseType : EntityBase
    {
        public int PurchaseTypeId { get; set; }
        public PurchaseType PurchaseType { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}