@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_INV_STOCKVAL_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_INV_STOCKVAL_DS as select from zinv_stockval_ds
association to parent ZCDS_CURRENTSTOCK_DS as _CURRENTSTOCK
    on $projection.Materialid = _CURRENTSTOCK.Materialid
{

     @UI.facet: [{ 
     id : 'STOCK VALUATION',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'STOCK VALUATION',
               position : 10  }]
               
     @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Materialid'}]
    @UI.identification: [{ position : 10 }]
    key materialid as Materialid,
     @UI.lineItem: [{ position : 20 , label : 'Plant'}]
    @UI.identification: [{ position : 20 }]
    plant as Plant,
     @UI.lineItem: [{ position : 30 , label : 'Valuationtype'}]
    @UI.identification: [{ position : 30 }]
    valuationtype as Valuationtype,
     @UI.lineItem: [{ position : 40 , label : 'Quantity'}]
    @UI.identification: [{ position : 40 }]
    quantity as Quantity,
     @UI.lineItem: [{ position : 50 , label : 'Unitofmeasure'}]
    @UI.identification: [{ position : 50 }]
    unitofmeasure as Unitofmeasure,
    @Semantics.amount.currencyCode: 'CurrencyCode'
     @UI.lineItem: [{ position : 60 , label : 'Value'}]
    @UI.identification: [{ position : 60 }]
    value as Value,
     @UI.lineItem: [{ position : 70 , label : 'CurrencyCode'}]
    @UI.identification: [{ position : 70 }]
    currency_code as CurrencyCode,
     @UI.lineItem: [{ position : 80 , label : 'Valuationdate'}]
    @UI.identification: [{ position : 80 }]
    valuationdate as Valuationdate,
    _CURRENTSTOCK // Make association public
}
