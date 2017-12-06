using System.Collections.Generic;

namespace VideoStore.Common.Helper
{
    public class SearchResults<T>
    {
        public IEnumerable<T> Results { get; set; }
        public int RowsAffected { get; set; }
    }
}
