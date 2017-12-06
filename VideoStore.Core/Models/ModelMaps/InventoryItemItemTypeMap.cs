namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemItemTypeMap : EntityBaseMap<InventoryItemItemType>
    {
        public InventoryItemItemTypeMap()
        {
            this.ToTable("InventoryItem_FormatType");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.ItemTypeId).HasColumnName("ItemTypeId");
        }
    }
}