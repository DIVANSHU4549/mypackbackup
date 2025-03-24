@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_FAMILY_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_FAMILY_DS as select from zhr_family_ds
association to parent ZCDS_EMPLOYEE_DS as _EMPLOYEE
    on $projection.Employeeid = _EMPLOYEE.Employeeid
{
    
     @UI.facet: [{
                   id : 'FAMILY1',
                   purpose : #STANDARD,
                   type : #IDENTIFICATION_REFERENCE,
                   label : 'FAMILY',
                   position : 10  }]
                   
     @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Employeeid'}]
    @UI.identification: [{ position : 10 }]
    key employeeid as Employeeid,
     @UI.lineItem: [{ position :20 , label : 'Familymemberid'}]
    @UI.identification: [{ position :20 }]
    familymemberid as Familymemberid,
     @UI.lineItem: [{ position :30 , label : 'Familymembername'}]
    @UI.identification: [{ position :30 }]
    familymembername as Familymembername,
     @UI.lineItem: [{ position :40 , label : 'Relationship'}]
    @UI.identification: [{ position :40 }]
    relationship as Relationship,
     @UI.lineItem: [{ position :50 , label : 'Dateofbirth'}]
    @UI.identification: [{ position :50 }]
    dateofbirth as Dateofbirth,
     @UI.lineItem: [{ position :60 , label : 'Gender'}]
    @UI.identification: [{ position :60 }]
    gender as Gender,
    _EMPLOYEE // Make association public
}
