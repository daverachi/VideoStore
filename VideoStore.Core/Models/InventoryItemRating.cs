using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemRating : EntityBase
    {
        public string Rating { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}