
namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemMap : EntityBaseMap<InventoryItem>
    {
        public InventoryItemMap()
        {
            this.ToTable("InventoryItem");
            this.Property(t => t.ItemName).HasColumnName("ItemName");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.Length).HasColumnName("Length");
        }
    }
}