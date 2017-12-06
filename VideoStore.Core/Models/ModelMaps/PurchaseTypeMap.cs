namespace VideoStore.Core.Models.ModelMaps
{
    public class PurchaseTypeMap : EntityBaseMap<PurchaseType>
    {
        public PurchaseTypeMap()
        {
            this.ToTable("ItemType");
            this.Property(t => t.TypeName).HasColumnName("TypeName");
        }
    }
}
