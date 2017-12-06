namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemPurchaseTypeMap : EntityBaseMap<InventoryItemPurchaseType>
    {
        public InventoryItemPurchaseTypeMap()
        {
            this.ToTable("InventoryItem_PurchaseType");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.PurchaseTypeId).HasColumnName("PurchaseTypeId");
        }
    }
}