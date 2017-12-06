namespace VideoStore.Core.Models.ModelMaps
{
    public class RelatedItemMap : EntityBaseMap<RelatedItem>
    {
        public RelatedItemMap()
        {
            this.ToTable("RelatedItem");
            this.Property(t => t.InventoryItem1Id).HasColumnName("InventoryItem1Id");
            this.Property(t => t.InventoryItem2Id).HasColumnName("InventoryItem2Id");
        }
    }
}
