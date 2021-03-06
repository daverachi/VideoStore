﻿using System.Collections.Generic;
using VideoStore.Core.Models;

namespace VideoStore.Core.Interfaces
{
    public interface IInventoryItemRepository
    {
        IEnumerable<InventoryItem> Get();
    }
}
