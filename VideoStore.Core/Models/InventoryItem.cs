using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItem : EntityBase
    {
        public string ItemName { get; set; }
        public string Description { get; set; }
        public int? Length { get; set; }
    }
}
