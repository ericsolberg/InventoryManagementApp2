/**
 * 
 * @On(event = { "READ" }, entity = "inventoryManagementSrv.Store")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
	const data = await SELECT.from('inventoryManagementSrv.Store');
    for (let store of data) {
        store.reorderLevel = store.sales * store.leadTime;
        store.stockLevel = (store.reorderLevel < store.stock) ? 'Normal' :
            (store.reorderLevel === store.stock) ? 'Risk' : 'Low';

        await UPDATE('inventoryManagementSrv.Store')
            .set({
                stockLevel: store.stockLevel,
                reorderLevel: store.reorderLevel

            })
            .where({ productID: store.productID });
    }

}