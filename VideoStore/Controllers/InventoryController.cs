using System.Collections.Generic;
using System.Web.Http;
using VideoStore.Core.Interfaces;
using VideoStore.Core.Models;

namespace VideoStore.Controllers
{
    public class InventoryController : ApiController
    {
        private readonly ILookupService _lookupService;
        private readonly IAdminService _adminService;
        public InventoryController(ILookupService lookupService, IAdminService adminService)
        {
            _lookupService = lookupService;
            _adminService = adminService;
        }

        public IEnumerable<InventoryItem> Get()
        {
            var x = _lookupService.GetInventory();
            return x;
        }
    }
}
