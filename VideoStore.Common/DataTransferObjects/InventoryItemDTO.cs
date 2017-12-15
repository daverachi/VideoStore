namespace VideoStore.Common.DataTransferObjects
{
    public class InventoryItemDTO
    {
        public string ItemName { get; set; }
        public string Description { get; set; }
        public int? Length { get; set; }
        public string ItemType { get; set; }
        public int ItemTypeId { get; set; }
        public string PurchaseType { get; set; }
        public int PurchaseTypeId { get; set; }
    }
}
