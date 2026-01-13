sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"purord/test/integration/pages/PurchaseOrderList",
	"purord/test/integration/pages/PurchaseOrderObjectPage"
], function (JourneyRunner, PurchaseOrderList, PurchaseOrderObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('purord') + '/test/flp.html#app-preview',
        pages: {
			onThePurchaseOrderList: PurchaseOrderList,
			onThePurchaseOrderObjectPage: PurchaseOrderObjectPage
        },
        async: true
    });

    return runner;
});

