@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PCDS_CURRENTSTOCK_DS'
@Metadata.ignorePropagatedAnnotations: false
define root view entity ZPCDS_CURRENTSTOCK_DS provider contract transactional_query as projection on ZCDS_CURRENTSTOCK_DS
{
    key Materialid,
    Plant,
    Storagelocation,
    Stocktype,
    Quantity,
    Unitofmeasure,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Value, 
    CurrencyCode,
    /* Associations */
    _materialmovement: redirected to composition child ZPCDS_INV_MAT_MOVE_DS ,
    _slowmovement: redirected to composition child ZPCDS_INV_SLOW_MOV_DS,
    _stockvaluation: redirected to composition child ZPCDS_INV_STOCKVAL_DS 
}
