namespace inventoryManagement;

entity Product
{
    key ID : UUID;
    number : String;
    name : String;
    category : String;
    price : Double;
}

entity Warehouse
{
    key ID : UUID;
    name : String;
    location : String;
    materialNumber : String;
    materialName : String;
    supplier : String;
    baseUnit : String;
    availableStock : Integer;
    product : Association to one Product;
}

entity Store
{
    key ID : UUID;
    productID : String;
    productName : String;
    shelfID : String;
    stock : Integer;
    stockLevel : String;
    leadTime : Integer;
    reorderLevel : Integer;
    sales : Integer;
    warehouse : Association to one Warehouse;
}
