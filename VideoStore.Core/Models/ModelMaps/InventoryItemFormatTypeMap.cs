namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemFormatTypeMap : EntityBaseMap<InventoryItemFormatType>
    {
        public InventoryItemFormatTypeMap()
        {
            this.ToTable("InventoryItem_FormatType");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.FormatTypeId).HasColumnName("FormatTypeId");
        }
    }
}