namespace VideoStore.Core.Models.ModelMaps
{
    public class FilmContributorTypeMap : EntityBaseMap<FilmContributorType>
    {
        public FilmContributorTypeMap()
        {
            this.ToTable("FilmContributorType");
            this.Property(t => t.TypeName).HasColumnName("TypeName");
        }
    }
}
