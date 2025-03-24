@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PCDS_INV_STOCKVAL_DS'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZPCDS_INV_STOCKVAL_DS as projection on ZCDS_INV_STOCKVAL_DS
{
    key Materialid,
    Plant,
    Valuationtype,
    Quantity,
    Unitofmeasure,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Value,
    CurrencyCode,
    Valuationdate,
    /* Associations */
    _CURRENTSTOCK: redirected to parent ZPCDS_CURRENTSTOCK_DS  
}
