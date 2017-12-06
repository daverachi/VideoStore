namespace VideoStore.Core.Models.ModelMaps
{
    public class AddressMap : EntityBaseMap<Address>
    {
        public AddressMap()
        {
            this.ToTable("Address");
            this.Property(t => t.AddressLine1).HasColumnName("AddressLine1");
            this.Property(t => t.AddressLine2).HasColumnName("AddressLine2");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.StateId).HasColumnName("StateId");
            this.Property(t => t.City).HasColumnName("Zipcode");
            this.Property(t => t.AddressTypeId).HasColumnName("AddressTypeId");
        }
    }
}
