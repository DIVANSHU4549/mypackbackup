@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ADDRESS PROJECTION VIEW'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_PCDS_ADDRESS_DS as projection on ZCDS_ADDRESS_DS
{
    key Employeeid,
    Country,
    City,
    Street,
    Postalcode,
    /* Associations */
    
    _EMPLOYEE: redirected to parent ZC_PCDS_EMPLOYEE_DS
}
