@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_ADDRESS_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_ADDRESS_DS as select from zhr_address_ds
association to parent ZCDS_EMPLOYEE_DS as _EMPLOYEE
    on $projection.Employeeid = _EMPLOYEE.Employeeid
{

     @UI.facet: [{
                   id : 'address1',
                   purpose : #STANDARD,
                   type : #IDENTIFICATION_REFERENCE,
                   label : 'ADDRESS',
                   position : 10  }]
                   
     @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Employeeid'}]
    @UI.identification: [{ position : 10 }]
    key employeeid as Employeeid,
       @UI.lineItem: [{ position : 20 , label : 'Country'}]
    @UI.identification: [{ position : 20 }]
    country as Country,
       @UI.lineItem: [{ position : 30 , label : 'City'}]
    @UI.identification: [{ position : 30 }]
    city as City,
       @UI.lineItem: [{ position : 40 , label : 'Street'}]
    @UI.identification: [{ position : 40 }]
    street as Street,
       @UI.lineItem: [{ position : 50 , label : 'Postalcode'}]
    @UI.identification: [{ position : 50 }]
    postalcode as Postalcode,
    _EMPLOYEE
}
