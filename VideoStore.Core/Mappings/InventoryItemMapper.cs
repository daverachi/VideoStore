using VideoStore.Common.DataTransferObjects;
using VideoStore.Core.Models;

namespace VideoStore.Core.Mappings
{
    public static class InventoryItemMapper
    {
        public static InventoryItemDTO ToDTO(InventoryItem item)
        {
            return new InventoryItemDTO {
                ItemName = item.ItemName,
                Description = item.Description,
                Length = item.Length
            };
        }
    }
}
