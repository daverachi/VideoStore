﻿using System.Collections.Generic;
using System.ComponentModel;

namespace VideoStore.Common.Helper
{
    public class PageSort
    {
        public virtual int PageNumber { get; set; }
        public virtual int PageSize { get; set; }
        public virtual List<SortBy> OrderBy { get; set; }
    }
    public class SortBy
    {
        public string Column { get; set; }
        public ListSortDirection Direction { get; set; }
    }
}
