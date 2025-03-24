@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PCDS_INV_MAT_MOVE_DS'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZPCDS_INV_MAT_MOVE_DS as projection on ZCDS_INV_MAT_MOVE_DS
{
    key Movementid,
    key Materialid,
    Plant,
    Storagelocation,
    Quantity,
    Unitofmeasure,
    Movementdate,
    /* Associations */
    _CURRENTSTOCK: redirected to parent ZPCDS_CURRENTSTOCK_DS   
}
