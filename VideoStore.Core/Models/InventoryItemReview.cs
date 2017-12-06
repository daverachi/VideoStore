﻿using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemReview : EntityBase
    {
        public string Review { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
        public int? CustomerId { get; set; }
        public Customer Customer { get; set; }
    }
}