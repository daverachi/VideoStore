using VideoStore.Common.DataAccess.Interfaces;
using VideoStore.Common.Logging;

namespace VideoStore.Common.DataAccess
{
    public class Repository<T> : BaseRepository<T>, IRepository<T> where T : EntityBase
    {
        public Repository(IUnitOfWork uow, INlogger log) : base(uow, log)
        {
        }
    }
}
