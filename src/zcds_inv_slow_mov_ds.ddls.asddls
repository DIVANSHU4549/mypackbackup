@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_INV_SLOW_MOV_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_INV_SLOW_MOV_DS as select from ZINV_SLOW_MOV_DS
association to parent ZCDS_CURRENTSTOCK_DS as _CURRENTSTOCK
    on $projection.Materialid = _CURRENTSTOCK.Materialid
{

     @ui.facet: [{ 
     id : 'SLOW MOVEMENT',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'SLOW MOVEMENT',
               position : 10  }]
    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Materialid'}]
    @UI.identification: [{ position : 10 }]
    key materialid as Materialid,
    @UI.lineItem: [{ position : 20 , label : 'Plant'}]
    @UI.identification: [{ position : 20 }]
    plant as Plant,
    @UI.lineItem: [{ position : 30 , label : 'Storagelocation'}]
    @UI.identification: [{ position : 30 }]
    storagelocation as Storagelocation,
    @UI.lineItem: [{ position : 40 , label : 'Lastmovementdate'}]
    @UI.identification: [{ position : 40 }]
    lastmovementdate as Lastmovementdate,
    @UI.lineItem: [{ position : 50 , label : 'Dayswithoutmovement'}]
    @UI.identification: [{ position : 50 }]
    dayswithoutmovement as Dayswithoutmovement,
    @UI.lineItem: [{ position : 60 , label : 'Quantity'}]
    @UI.identification: [{ position : 60 }]
    quantity as Quantity,
    @UI.lineItem: [{ position : 70 , label : 'Unitofmeasure'}]
    @UI.identification: [{ position : 70 }]
    unitofmeasure as Unitofmeasure,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    @UI.lineItem: [{ position : 80 , label : 'Value'}]
    @UI.identification: [{ position : 80 }]
    value as Value,
    @UI.lineItem: [{ position : 90 , label : 'CurrencyCode'}]
    @UI.identification: [{ position : 90 }]
    currency_code as CurrencyCode,
    _CURRENTSTOCK // Make association public
}
