using System;

namespace VideoStore.Common.DataAccess
{
    public abstract class EntityBase
    {
        public int Id { get; set; }
        public int? CreateUserId { get; set; }
        public DateTime? CreateDate { get; set; }
        public int? UpdateUserId { get; set; }
        public DateTime? UpdateDate { get; set; }
    }
}
