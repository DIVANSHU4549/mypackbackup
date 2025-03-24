@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_CURRENTSTOCK_DS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CURRENTSTOCK_DS as select from zcurrentstock_ds
composition [0..*] of ZCDS_INV_MAT_MOVE_DS as _materialmovement
composition [1..1] of ZCDS_INV_STOCKVAL_DS as _stockvaluation
composition [1..1] of ZCDS_INV_SLOW_MOV_DS as _slowmovement

{

    @UI.facet: [{ 
     id : 'CURRENTSTOCK',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'CURRENT STOCK',
               position : 10  },
               
               {
               id : 'MATERIALMOVEMENT',
               purpose : #STANDARD,
               type : #LINEITEM_REFERENCE,
               label : 'MATERIAL MOVEMENT',
               targetElement : '_materialmovement',
               position : 20},
               
                {
               id : 'STOCKVALUATION',
               purpose : #STANDARD,
               type : #LINEITEM_REFERENCE,
               label : 'STOCK VALUATION',
               targetElement : '_stockvaluation',
               position : 30},
               
                 {
               id : 'SLOWMOVEMENT',
               purpose : #STANDARD,
               type : #LINEITEM_REFERENCE,
               label : 'SLOW MOVEMENT',
               targetElement : '_slowmovement',
               position : 40}          
               
     ]
     
    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Materialid'}]
    @UI.identification: [{ position : 10 }]
    key materialid as Materialid,
     @UI.lineItem: [{ position : 20 , label : 'Materialid'}]
    @UI.identification: [{ position : 20 }]
    plant as Plant,
     @UI.lineItem: [{ position : 30 , label : 'Materialid'}]
    @UI.identification: [{ position : 30 }]
    storagelocation as Storagelocation,
     @UI.lineItem: [{ position : 40 , label : 'Materialid'}]
    @UI.identification: [{ position : 40 }]
    stocktype as Stocktype,
     @UI.lineItem: [{ position : 50 , label : 'Materialid'}]
    @UI.identification: [{ position : 50 }]
    quantity as Quantity,
     @UI.lineItem: [{ position : 60 , label : 'Materialid'}]
    @UI.identification: [{ position : 60 }]
    unitofmeasure as Unitofmeasure,
    @Semantics.amount.currencyCode: 'CurrencyCode'
     @UI.lineItem: [{ position : 70 , label : 'Materialid'}]
    @UI.identification: [{ position : 70 }]
    value as Value,
     @UI.lineItem: [{ position : 80 , label : 'Materialid'}]
    @UI.identification: [{ position : 80 }]
    currency_code as CurrencyCode,
    _materialmovement,
    _stockvaluation,
    _slowmovement 
}
