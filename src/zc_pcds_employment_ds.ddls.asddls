@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMPLOYMENT PROJECTION VIEW'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_PCDS_EMPLOYMENT_DS as projection on ZCDS_EMPOYMENT_DS
{
    key Employeeid,
    Companycode,
    Personnelarea,
    Employeegroup,
    Employeesubgroup,
    Costcenter,
    /* Associations */
    _EMPLOYEE: redirected to parent ZC_PCDS_EMPLOYEE_DS
}
