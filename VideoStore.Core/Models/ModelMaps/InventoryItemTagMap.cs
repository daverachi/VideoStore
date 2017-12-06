namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemTagMap : EntityBaseMap<InventoryItemTag>
    {
        public InventoryItemTagMap()
        {
            this.ToTable("InventoryItem_Tag");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.Tag).HasColumnName("Tag");
        }
    }
}