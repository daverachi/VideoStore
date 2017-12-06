using System.Data.Entity.ModelConfiguration;
using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models.ModelMaps
{
    public class EntityBaseMap<T> : EntityTypeConfiguration<T> where T : EntityBase
    {
        public EntityBaseMap()
        {
            this.HasKey(t => t.Id);
            this.Property(t => t.CreateUserId).HasColumnName("CreateUserId");
            this.Property(t => t.CreateDate).HasColumnName("CreateDate");
            this.Property(t => t.UpdateUserId).HasColumnName("UpdateUserId");
            this.Property(t => t.UpdateDate).HasColumnName("UpdateDate");
        }
    }
}