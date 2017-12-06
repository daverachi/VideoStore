using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class RelatedItem : EntityBase
    {
        public int InventoryItem1Id { get; set; }
        public InventoryItem InventoryItem1 { get; set; }
        public int InventoryItem2Id { get; set; }
        public InventoryItem InventoryItem2 { get; set; }
    }
}