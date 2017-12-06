namespace VideoStore.Core.Models.ModelMaps
{
    public class FilmContributorMap : EntityBaseMap<FilmContributor>
    {
        public FilmContributorMap()
        {
            this.ToTable("FilmContributor");
            this.Property(t => t.FirstName).HasColumnName("FirstName");
            this.Property(t => t.LastName).HasColumnName("LastName");
            this.Property(t => t.FilmContributorTypeId).HasColumnName("FilmContributorTypeId");
        }
    }
}
