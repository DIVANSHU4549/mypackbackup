@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PCDS_INV_SLOW_MOV_DS'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZPCDS_INV_SLOW_MOV_DS as projection on ZCDS_INV_SLOW_MOV_DS
{
    key Materialid,
    Plant,
    Storagelocation,
    Lastmovementdate,
    Dayswithoutmovement,
    Quantity,
    Unitofmeasure,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Value,
    CurrencyCode,
    /* Associations */
    _CURRENTSTOCK: redirected to parent ZPCDS_CURRENTSTOCK_DS  
}
