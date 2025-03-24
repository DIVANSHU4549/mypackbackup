@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS PROJECTION VIEW'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_PCDS_EMPLOYEE_DS as projection on ZCDS_EMPLOYEE_DS
{
    key Employeeid,
    Firstname,
    Lastname,
    Dateofbirth,
    Gender,
    Nationality,
    /* Associations */
    _EMPLOYMENT: redirected to composition child ZC_PCDS_EMPLOYMENT_DS,
    _EMPLOYMENT1: redirected to composition child   ZC_PCDS_ADDRESS_DS,
    _EMPLOYMENT2: redirected to composition child  ZC_PCDS_CONTRACT_DS,
    _EMPLOYMENT3: redirected to composition child ZC_PCDS_FAMILY_DS
} 
