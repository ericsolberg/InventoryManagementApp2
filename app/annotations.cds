using { inventoryManagementSrv } from '../srv/service.cds';

annotate inventoryManagementSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products' };
annotate inventoryManagementSrv.Product with @UI.DataPoint #number: {
  Value: number,
  Title: 'Number',
};
annotate inventoryManagementSrv.Product with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate inventoryManagementSrv.Product with @UI.DataPoint #category: {
  Value: category,
  Title: 'Category',
};
annotate inventoryManagementSrv.Product with {
  number @title: 'Number';
  name @title: 'Name';
  category @title: 'Category';
  price @title: 'Price'
};

annotate inventoryManagementSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: number },
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: category },
    { $Type: 'UI.DataField', Value: price }
];

annotate inventoryManagementSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: number },
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: category },
    { $Type: 'UI.DataField', Value: price }
  ]
};

annotate inventoryManagementSrv.Product with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#number' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#category' }
];

annotate inventoryManagementSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate inventoryManagementSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses' };
annotate inventoryManagementSrv.Warehouse with {
  product @Common.ValueList: {
    CollectionPath: 'Product',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: product_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'number'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'category'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'price'
      },
    ],
  }
};
annotate inventoryManagementSrv.Warehouse with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate inventoryManagementSrv.Warehouse with @UI.DataPoint #location: {
  Value: location,
  Title: 'Location',
};
annotate inventoryManagementSrv.Warehouse with @UI.DataPoint #materialNumber: {
  Value: materialNumber,
  Title: 'Material Number',
};
annotate inventoryManagementSrv.Warehouse with {
  name @title: 'Name';
  location @title: 'Location';
  materialNumber @title: 'Material Number';
  materialName @title: 'Material Name';
  supplier @title: 'Supplier';
  baseUnit @title: 'Base Unit';
  availableStock @title: 'Available Stock'
};

annotate inventoryManagementSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: location },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: materialName },
    { $Type: 'UI.DataField', Value: supplier },
    { $Type: 'UI.DataField', Value: baseUnit },
    { $Type: 'UI.DataField', Value: availableStock },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
];

annotate inventoryManagementSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Value: location },
    { $Type: 'UI.DataField', Value: materialNumber },
    { $Type: 'UI.DataField', Value: materialName },
    { $Type: 'UI.DataField', Value: supplier },
    { $Type: 'UI.DataField', Value: baseUnit },
    { $Type: 'UI.DataField', Value: availableStock },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
  ]
};

annotate inventoryManagementSrv.Warehouse with {
  product @Common.Label: 'Product'
};

annotate inventoryManagementSrv.Warehouse with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#location' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#materialNumber' }
];

annotate inventoryManagementSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate inventoryManagementSrv.Warehouse with @UI.SelectionFields: [
  product_ID
];

annotate inventoryManagementSrv.Store with @UI.HeaderInfo: { TypeName: 'Store', TypeNamePlural: 'Stores' };
annotate inventoryManagementSrv.Store with {
  product @Common.ValueList: {
    CollectionPath: 'Product',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: product_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'number'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'category'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'price'
      },
    ],
  }
};
annotate inventoryManagementSrv.Store with @UI.DataPoint #productName: {
  Value: productName,
  Title: 'Product Name',
};
annotate inventoryManagementSrv.Store with @UI.DataPoint #shelfID: {
  Value: shelfID,
  Title: 'Shelf ID',
};
annotate inventoryManagementSrv.Store with @UI.DataPoint #stockLevel: {
  Value: stockLevel,
  Title: 'Stock Level',
};
annotate inventoryManagementSrv.Store with {
  productName @title: 'Product Name';
  shelfID @title: 'Shelf ID';
  stockLevel @title: 'Stock Level';
  stock @title: 'Stock';
  leadTime @title: 'Lead Time';
  reorderLevel @title: 'Reorder Level';
  sales @title: 'Sales'
};

annotate inventoryManagementSrv.Store with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: shelfID },
    { $Type: 'UI.DataField', Value: stockLevel },
    { $Type: 'UI.DataField', Value: stock },
    { $Type: 'UI.DataField', Value: leadTime },
    { $Type: 'UI.DataField', Value: reorderLevel },
    { $Type: 'UI.DataField', Value: sales },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
];

annotate inventoryManagementSrv.Store with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: shelfID },
    { $Type: 'UI.DataField', Value: stockLevel },
    { $Type: 'UI.DataField', Value: stock },
    { $Type: 'UI.DataField', Value: leadTime },
    { $Type: 'UI.DataField', Value: reorderLevel },
    { $Type: 'UI.DataField', Value: sales },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
  ]
};

annotate inventoryManagementSrv.Store with {
  product @Common.Label: 'Product'
};

annotate inventoryManagementSrv.Store with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#productName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#shelfID' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#stockLevel' }
];

annotate inventoryManagementSrv.Store with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate inventoryManagementSrv.Store with @UI.SelectionFields: [
  product_ID
];

