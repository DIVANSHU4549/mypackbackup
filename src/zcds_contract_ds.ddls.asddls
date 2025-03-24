@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_CONTRACT_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CONTRACT_DS as select from zhr_contract_ds
association to parent ZCDS_EMPLOYEE_DS as _EMPLOYEE
    on $projection.Employeeid = _EMPLOYEE.Employeeid
{
     @UI.facet: [{
                   id : 'CONTRACT1',
                   purpose : #STANDARD,
                   type : #IDENTIFICATION_REFERENCE,
                   label : 'CONTRACT',
                   position : 10  }]
                   
     @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Employeeid'}]
    @UI.identification: [{ position : 10 }]
    key employeeid as Employeeid,
    @UI.lineItem: [{ position : 20 , label : 'Employeeid'}]
    @UI.identification: [{ position : 20 }]
    contracttype as Contracttype,
    @UI.lineItem: [{ position : 30 , label : 'Employeeid'}]
    @UI.identification: [{ position : 30 }]
    startdate as Startdate,
    @UI.lineItem: [{ position : 40 , label : 'Employeeid'}]
    @UI.identification: [{ position : 40 }]
    enddate as Enddate,
    @UI.lineItem: [{ position : 50 , label : 'Employeeid'}]
    @UI.identification: [{ position : 50 }]
    payscalegroup as Payscalegroup,
    @UI.lineItem: [{ position : 60 , label : 'Employeeid'}]
    @UI.identification: [{ position : 60 }]
    payscalelevel as Payscalelevel,
    _EMPLOYEE 
}
