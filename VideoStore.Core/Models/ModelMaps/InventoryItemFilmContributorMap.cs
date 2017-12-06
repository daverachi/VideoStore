namespace VideoStore.Core.Models.ModelMaps
{
    public class InventoryItemFilmContributorMap : EntityBaseMap<InventoryItemFilmContributor>
    {
        public InventoryItemFilmContributorMap()
        {
            this.ToTable("InventoryItem_FilmContributor");
            this.Property(t => t.InventoryItemId).HasColumnName("InventoryItemId");
            this.Property(t => t.FilmContributorId).HasColumnName("FilmContributorId");
        }
    }
}