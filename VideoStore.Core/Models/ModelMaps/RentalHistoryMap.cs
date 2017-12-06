namespace VideoStore.Core.Models.ModelMaps
{
    public class RentalHistoryMap : EntityBaseMap<RentalHistory>
    {
        public RentalHistoryMap()
        {
            this.ToTable("RentalHistory");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.CustomerId).HasColumnName("CustomerId");
        }
    }
}
