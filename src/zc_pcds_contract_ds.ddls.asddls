@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONTRACT PROJECTION VIEW'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_PCDS_CONTRACT_DS as projection on ZCDS_CONTRACT_DS
{
    key Employeeid,
    Contracttype,
    Startdate,
    Enddate,
    Payscalegroup,
    Payscalelevel,
    /* Associations */
    _EMPLOYEE: redirected to parent ZC_PCDS_EMPLOYEE_DS
}
