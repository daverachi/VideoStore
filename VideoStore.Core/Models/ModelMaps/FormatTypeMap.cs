namespace VideoStore.Core.Models.ModelMaps
{
    class FormatTypeMap : EntityBaseMap<FormatType>
    {
        public FormatTypeMap()
        {
            this.ToTable("FormatType");
            this.Property(t => t.TypeName).HasColumnName("TypeName");
        }
    }
}
