using VideoStore.Common.DataAccess;
using VideoStore.Common.DataAccess.Interfaces;
using VideoStore.Core.Interfaces;

namespace VideoStore.Core.Repositories
{
    public class UnitOfWork : UnitOfWorkBase, IUnitOfWork
    {
        public UnitOfWork(IVideoStoreContext context) //inject other contexts here
        {
            _DbContexts.Add(context);
        }
    }
}
