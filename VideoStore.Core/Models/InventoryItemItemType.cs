using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemItemType : EntityBase
    {
        public int ItemTypeId { get; set; }
        public ItemType ItemType { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}