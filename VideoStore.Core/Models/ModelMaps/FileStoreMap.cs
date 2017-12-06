namespace VideoStore.Core.Models.ModelMaps
{
    public class FileStoreMap : EntityBaseMap<FileStore>
    {
        public FileStoreMap()
        {
            this.ToTable("FileStore");
            this.Property(t => t.FileURI).HasColumnName("FileURI");
        }
    }
}