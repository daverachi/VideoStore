namespace VideoStore.Core.Models.ModelMaps
{
    public class AddressTypeMap : EntityBaseMap<AddressType>
    {
        public AddressTypeMap()
        {
            this.ToTable("AddressType");
            this.Property(t => t.TypeName).HasColumnName("TypeName");
        }
    }
}
