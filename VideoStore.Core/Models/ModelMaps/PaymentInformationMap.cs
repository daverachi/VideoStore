namespace VideoStore.Core.Models.ModelMaps
{
    public class PaymentInformationMap : EntityBaseMap<PaymentInformation>
    {
        public PaymentInformationMap()
        {
            this.ToTable("PaymentInformation");
            this.Property(t => t.CustomerId).HasColumnName("CustomerId");
        }
    }
}
