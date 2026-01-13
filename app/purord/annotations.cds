using PurchaseOrderService as service from '../../srv/service';
annotate service.PurchaseOrder with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : PurchaseOrder,
            Label : 'Purchase Order',
        },
        {
            $Type : 'UI.DataField',
            Value : PurchaseOrderType,
            Label : 'Purchase Order Type',
        },
        {
            $Type : 'UI.DataField',
            Value : PurchasingGroup,
            Label : 'Purchasing Group',
        },
        {
            $Type : 'UI.DataField',
            Value : PurchasingOrganization,
            Label : 'Purchasing Organization',
        },
        {
            $Type : 'UI.DataField',
            Value : Supplier,
            Label : 'Supplier',
        },
        {
            $Type : 'UI.DataField',
            Value : TotalAmount,
            Label : 'Total Amount',
        },
        {
            $Type : 'UI.DataField',
            Value : CompanyCode,
            Label : 'Company Code',
        },
        {
            $Type : 'UI.DataField',
            Value : DeliveryDate,
            Label : 'Delivery Date',
        },
        {
            $Type : 'UI.DataField',
            Value : ApprovalStatus,
            Label : 'Approval Status',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : PurchaseOrder,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID : 'Items',
            Target : '_PurchaseOrderItem/@UI.LineItem#Items',
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : TotalAmount,
                Label : 'Total Amount',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier,
                Label : 'Supplier',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchasingGroup,
                Label : 'Purchasing Group',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchaseOrderType,
                Label : 'Purchase Order Type',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchaseOrder,
                Label : 'Purchase Order',
            },
            {
                $Type : 'UI.DataField',
                Value : ApprovalStatus,
                Label : 'Approval Status',
            },
            {
                $Type : 'UI.DataField',
                Value : CompanyCode,
                Label : 'Company Code',
            },
            {
                $Type : 'UI.DataField',
                Value : DeliveryDate,
                Label : 'Delivery Date',
            },
            {
                $Type : 'UI.DataField',
                Value : DocumentCurrency,
                Label : 'Document Currency',
            },
            {
                $Type : 'UI.DataField',
                Value : HeaderNote,
                Label : 'Header Note',
            },
            {
                $Type : 'UI.DataField',
                Value : ExchangeRate,
                Label : 'Exchange Rate',
            },
            {
                $Type : 'UI.DataField',
                Value : IncotermsClassification,
                Label : 'Incoterms Classification',
            },
            {
                $Type : 'UI.DataField',
                Value : IncotermsTransferLocation,
                Label : 'Incoterms Transfer Location',
            },
            {
                $Type : 'UI.DataField',
                Value : PaymentTerms,
                Label : 'Payment Terms',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchaseOrderDate,
                Label : 'Purchase Order Date',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchasingProcessingStatus,
                Label : 'Purchasing Processing Status',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchasingOrganization,
                Label : 'Purchasing Organization',
            },
            {
                $Type : 'UI.DataField',
                Value : ReleaseCode,
                Label : 'Release Code',
            },
            {
                $Type : 'UI.DataField',
                Value : SupplyingPlant,
                Label : 'Supplying Plant',
            },
        ],
    },
);

annotate service.PurchaseOrder with {
    ID @Common.FieldControl : #ReadOnly
};

annotate service.PurchaseOrderItem with @(
    UI.LineItem #Items : [
        {
            $Type : 'UI.DataField',
            Value : PurchaseOrder,
            Label : 'Purchase Order',
        },
        {
            $Type : 'UI.DataField',
            Value : PurchaseOrderItem,
            Label : 'Purchase Order Item',
        },
        {
            $Type : 'UI.DataField',
            Value : Plant,
            Label : 'Plant',
        },
        {
            $Type : 'UI.DataField',
            Value : Material,
            Label : 'Material',
        },
        {
            $Type : 'UI.DataField',
            Value : OrderQuantity,
            Label : 'Order Quantity',
        },
        {
            $Type : 'UI.DataField',
            Value : PurchaseOrderQuantityUnit,
            Label : 'Purchase Order Quantity Unit',
        },
        {
            $Type : 'UI.DataField',
            Value : NetPriceAmount,
            Label : 'Net Price Amount',
        },
    ]
);

