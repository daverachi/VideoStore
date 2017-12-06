using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using VideoStore.Common.DataAccess;
using VideoStore.Core.Interfaces;
using VideoStore.Core.Models.ModelMaps;

namespace VideoStore.Core.Models
{
    public class VideoStoreContext : BaseDbContext, IVideoStoreContext
    {
        static VideoStoreContext()
        {
            Database.SetInitializer<VideoStoreContext>(null);
        }

        public VideoStoreContext()
            : base("Name=VideoStoreContext")
        {
        }
        public DbSet<Address> Addresses { get; set; }
        public DbSet<AddressType> AddressTypes { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<FileStore> FileStores { get; set; }
        public DbSet<FilmContributor> FilmContributors { get; set; }
        public DbSet<FilmContributorType> FilmContributorTypes { get; set; }
        public DbSet<FormatType> FormatTypes { get; set; }
        public DbSet<InventoryItem> InventoryItems { get; set; }
        public DbSet<InventoryItemFileStore> InventoryItemFileStores { get; set; }
        public DbSet<InventoryItemFilmContributor> InventoryItemFilmContributors { get; set; }
        public DbSet<InventoryItemFormatType> InventoryItemFormatTypes { get; set; }
        public DbSet<InventoryItemItemType> InventoryItemItemTypes { get; set; }
        public DbSet<InventoryItemPurchaseType> InventoryItemPurchaseTypes { get; set; }
        public DbSet<InventoryItemRating> InventoryItemRatings { get; set; }
        public DbSet<InventoryItemReview> InventoryItemReviews { get; set; }
        public DbSet<InventoryItemTag> InventoryItemTags { get; set; }
        public DbSet<ItemType> ItemTypes { get; set; }
        public DbSet<PaymentInformation> PaymentInformations { get; set; }
        public DbSet<PurchaseType> PurchaseTypes { get; set; }
        public DbSet<RelatedItem> RelatedItems { get; set; }
        public DbSet<RentalHistory> RentalHistories { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // Prevent cascading delete
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<ManyToManyCascadeDeleteConvention>();

            modelBuilder.Configurations.Add(new AddressMap());
            modelBuilder.Configurations.Add(new AddressTypeMap());
            modelBuilder.Configurations.Add(new CustomerMap());
            modelBuilder.Configurations.Add(new FileStoreMap());
            modelBuilder.Configurations.Add(new FilmContributorMap());
            modelBuilder.Configurations.Add(new FilmContributorTypeMap());
            modelBuilder.Configurations.Add(new FormatTypeMap());
            modelBuilder.Configurations.Add(new InventoryItemMap());
            modelBuilder.Configurations.Add(new InventoryItemFileStoreMap());
            modelBuilder.Configurations.Add(new InventoryItemFilmContributorMap());
            modelBuilder.Configurations.Add(new InventoryItemFormatTypeMap());
            modelBuilder.Configurations.Add(new InventoryItemItemTypeMap());
            modelBuilder.Configurations.Add(new InventoryItemPurchaseTypeMap());
            modelBuilder.Configurations.Add(new InventoryItemRatingMap());
            modelBuilder.Configurations.Add(new InventoryItemReviewMap());
            modelBuilder.Configurations.Add(new InventoryItemTagMap());
            modelBuilder.Configurations.Add(new ItemTypeMap());
            modelBuilder.Configurations.Add(new PaymentInformationMap());
            modelBuilder.Configurations.Add(new PurchaseTypeMap());
            modelBuilder.Configurations.Add(new RelatedItemMap());
            modelBuilder.Configurations.Add(new RentalHistoryMap());
        }
    }
}
