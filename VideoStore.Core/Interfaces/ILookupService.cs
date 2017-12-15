using System.Collections.Generic;
using VideoStore.Common.DataTransferObjects;

namespace VideoStore.Core.Interfaces
{
    public interface ILookupService
    {
        IEnumerable<InventoryItemDTO> GetInventory();
    }
}
