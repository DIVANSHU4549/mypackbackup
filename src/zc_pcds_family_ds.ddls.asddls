@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'FAMILY PROJECTION VIEW'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_PCDS_FAMILY_DS as projection on ZCDS_FAMILY_DS
{
    key Employeeid,
    Familymemberid,
    Familymembername,
    Relationship,
    Dateofbirth,
    Gender,
    /* Associations */
    _EMPLOYEE: redirected to parent ZC_PCDS_EMPLOYEE_DS
}
