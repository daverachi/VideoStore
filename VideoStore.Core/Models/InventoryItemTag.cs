using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemTag : EntityBase
    {
        public string Tag { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}