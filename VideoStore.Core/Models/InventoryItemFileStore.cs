using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemFileStore : EntityBase
    {
        public int FileStoreId { get; set; }
        public FileStore FileStore { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}