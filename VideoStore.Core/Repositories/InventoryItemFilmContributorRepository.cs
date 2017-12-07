using VideoStore.Common.DataAccess;
using VideoStore.Common.DataAccess.Interfaces;
using VideoStore.Common.Logging;
using VideoStore.Core.Interfaces;
using VideoStore.Core.Models;

namespace VideoStore.Core.Repositories
{
    public class InventoryItemFilmContributorRepository : BaseRepository<InventoryItemFilmContributor>, IInventoryItemFilmContributorRepository
    {
        private IUnitOfWork _UnitOfWork;
        private INlogger _log;

        public InventoryItemFilmContributorRepository(IUnitOfWork UnitOfWork, INlogger log)
            : base(UnitOfWork, log)
        {
            _UnitOfWork = UnitOfWork;
            _log = log;
        }
    }
}
