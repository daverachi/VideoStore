using VideoStore.Common.DataAccess;

namespace VideoStore.Core.Models
{
    public class InventoryItemFilmContributor : EntityBase
    {
        public int FilmContributorId { get; set; }
        public FilmContributor FilmContributor { get; set; }
        public int InventoryItemId { get; set; }
        public InventoryItem InventoryItem { get; set; }
    }
}
