namespace VideoStore.Core.Models.ModelMaps
{
    public class ItemTypeMap : EntityBaseMap<ItemType>
    {
        public ItemTypeMap()
        {
            this.ToTable("ItemType");
            this.Property(t => t.TypeName).HasColumnName("TypeName");
        }
    }
}
