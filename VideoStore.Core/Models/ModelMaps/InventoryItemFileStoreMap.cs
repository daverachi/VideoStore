namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemFileStoreMap : EntityBaseMap<InventoryItemFileStore>
    {
        public InventoryItemFileStoreMap()
        {
            this.ToTable("InventoryItem_FileStore");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.FileStoreId).HasColumnName("FileStoreId");
        }
    }
}