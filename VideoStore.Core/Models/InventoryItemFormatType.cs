using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemFormatType : EntityBase
    {
        public int FormatTypeId { get; set; }
        public FormatType FormatType { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}
