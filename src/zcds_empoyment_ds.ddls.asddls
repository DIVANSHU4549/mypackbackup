@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_EMPOYMENT_D'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_EMPOYMENT_DS as select from zhr_empoyment_ds
association to parent ZCDS_EMPLOYEE_DS as _EMPLOYEE
    on $projection.Employeeid = _EMPLOYEE.Employeeid
{

     @UI.facet: [{
                   id : 'EMPOYMENT1',
                   purpose : #STANDARD,
                   type : #IDENTIFICATION_REFERENCE,
                   label : 'EMPOYMENT',
                   position : 10  }]
                   
    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Employeeid'}]
    @UI.identification: [{ position : 10 }]
    key employeeid as Employeeid,
     @UI.lineItem: [{ position : 20 , label : 'Companycode'}]
    @UI.identification: [{ position : 20 }]
    companycode as Companycode,
     @UI.lineItem: [{ position : 30 , label : 'Personnelarea'}]
    @UI.identification: [{ position : 30 }]
    personnelarea as Personnelarea,
     @UI.lineItem: [{ position : 40 , label : 'Employeegroup'}]
    @UI.identification: [{ position : 40 }]
    employeegroup as Employeegroup,
     @UI.lineItem: [{ position : 50 , label : 'Employeesubgroup'}]
    @UI.identification: [{ position : 50 }]
    employeesubgroup as Employeesubgroup,
     @UI.lineItem: [{ position : 60 , label : 'Employeesubgroup'}]
    @UI.identification: [{ position : 60 }]
    costcenter as Costcenter,
    _EMPLOYEE // Make association public
}
