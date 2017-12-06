namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemRatingMap : EntityBaseMap<InventoryItemRating>
    {
        public InventoryItemRatingMap()
        {
            this.ToTable("InventoryItem_Rating");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.Rating).HasColumnName("Rating");
        }
    }
}