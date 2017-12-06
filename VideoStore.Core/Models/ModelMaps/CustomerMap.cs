namespace VideoStore.Core.Models.ModelMaps
{
    public class CustomerMap : EntityBaseMap<Customer>
    {
        public CustomerMap()
        {
            this.ToTable("Customer");
            this.Property(t => t.EmailAddress).HasColumnName("EmailAddress");
            this.Property(t => t.Password).HasColumnName("Password");
            this.Property(t => t.StreetAddressId).HasColumnName("StreetAddressId");
            this.Property(t => t.BillingAddressId).HasColumnName("BillingAddressId");
        }
    }
}
