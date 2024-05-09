using { inventoryManagement } from '../db/schema.cds';

@path: '/service/inventoryManagement'
@requires: 'authenticated-user'
service inventoryManagementSrv {
  @odata.draft.enabled
  entity Product as projection on inventoryManagement.Product;
  @odata.draft.enabled
  entity Warehouse as projection on inventoryManagement.Warehouse;
  @odata.draft.enabled
  entity Store as projection on inventoryManagement.Store;
}