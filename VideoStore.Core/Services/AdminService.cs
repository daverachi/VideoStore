using VideoStore.Core.Interfaces;

namespace VideoStore.Core.Services
{
    public class AdminService : IAdminService
    {
        private readonly IAddressRepository _addressRepository;
        private readonly IAddressTypeRepository _addressTypeRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IFileStoreRepository _fileStoreRepository;
        private readonly IFilmContributorRepository _filmContributorRepository;
        private readonly IFilmContributorTypeRepository _filmContributorTypeRepository;
        private readonly IFormatTypeRepository _formatTypeRepository;
        private readonly IInventoryItemFileStoreRepository _inventoryItemFileStoreRepository;
        private readonly IInventoryItemFilmContributorRepository _inventoryItemFilmContributorRepository;
        private readonly IInventoryItemFormatTypeRepository _inventoryItemFormatTypeRepository;
        private readonly IInventoryItemItemTypeRepository _inventoryItemItemTypeRepository;
        private readonly IInventoryItemPurchaseTypeRepository _inventoryItemPurchaseTypeRepository;
        private readonly IInventoryItemRatingRepository _inventoryItemRatingRepository;
        private readonly IInventoryItemRepository _inventoryItemRepository;
        private readonly IInventoryItemReviewRepository _inventoryItemReviewRepository;
        private readonly IInventoryItemTagRepository _inventoryItemTagRepository;
        private readonly IItemTypeRepository _itemTypeRepository;
        private readonly IPaymentInformationRepository _paymentInformationRepository;
        private readonly IPurchaseTypeRepository _purchaseTypeRepository;
        private readonly IRelatedItemRepository _relatedItemRepository;
        private readonly IRentalHistoryRepository _rentalHistoryRepository;

        public AdminService(
                    IAddressRepository addressRepository,
                    IAddressTypeRepository addressTypeRepository,
                    ICustomerRepository customerRepository,
                    IFileStoreRepository fileStoreRepository,
                    IFilmContributorRepository filmContributorRepository,
                    IFilmContributorTypeRepository filmContributorTypeRepository,
                    IFormatTypeRepository formatTypeRepository,
                    IInventoryItemFileStoreRepository inventoryItemFileStoreRepository,
                    IInventoryItemFilmContributorRepository inventoryItemFilmContributorRepository,
                    IInventoryItemFormatTypeRepository inventoryItemFormatTypeRepository,
                    IInventoryItemItemTypeRepository inventoryItemItemTypeRepository,
                    IInventoryItemPurchaseTypeRepository inventoryItemPurchaseTypeRepository,
                    IInventoryItemRatingRepository inventoryItemRatingRepository,
                    IInventoryItemRepository inventoryItemRepository,
                    IInventoryItemReviewRepository inventoryItemReviewRepository,
                    IInventoryItemTagRepository inventoryItemTagRepository,
                    IItemTypeRepository itemTypeRepository,
                    IPaymentInformationRepository paymentInformationRepository,
                    IPurchaseTypeRepository purchaseTypeRepository,
                    IRelatedItemRepository relatedItemRepository,
                    IRentalHistoryRepository rentalHistoryRepository)
        {
            _addressRepository = addressRepository;
            _addressTypeRepository = addressTypeRepository;
            _customerRepository = customerRepository;
            _fileStoreRepository = fileStoreRepository;
            _filmContributorRepository = filmContributorRepository;
            _filmContributorTypeRepository = filmContributorTypeRepository;
            _formatTypeRepository = formatTypeRepository;
            _inventoryItemFileStoreRepository = inventoryItemFileStoreRepository;
            _inventoryItemFilmContributorRepository = inventoryItemFilmContributorRepository;
            _inventoryItemFormatTypeRepository = inventoryItemFormatTypeRepository;
            _inventoryItemItemTypeRepository = inventoryItemItemTypeRepository;
            _inventoryItemPurchaseTypeRepository = inventoryItemPurchaseTypeRepository;
            _inventoryItemRatingRepository = inventoryItemRatingRepository;
            _inventoryItemRepository = inventoryItemRepository;
            _inventoryItemReviewRepository = inventoryItemReviewRepository;
            _inventoryItemTagRepository = inventoryItemTagRepository;
            _itemTypeRepository = itemTypeRepository;
            _paymentInformationRepository = paymentInformationRepository;
            _purchaseTypeRepository = purchaseTypeRepository;
            _relatedItemRepository = relatedItemRepository;
            _rentalHistoryRepository = rentalHistoryRepository;
        }
    }
}