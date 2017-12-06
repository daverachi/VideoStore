namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemReviewMap : EntityBaseMap<InventoryItemReview>
    {
        public InventoryItemReviewMap()
        {
            this.ToTable("InventoryItem_Review");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.Review).HasColumnName("Review");
        }
    }
}