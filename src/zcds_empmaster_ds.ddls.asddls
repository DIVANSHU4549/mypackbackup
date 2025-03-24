@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMPLOYEE MASTER'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZCDS_EMPMASTER_DS as select from zemp_master_ds
composition [0..*] of zcds_empalloc  as _empallocation
association [0..*] to ZCDS_COMPANYCODES1_DS as _companycode on $projection.CompanyName = _companycode.CompanyName
association [0..*] to ZCDS_DEGENATION1_DS as _degination on $projection.Designation = _degination.DesignationName
{
    @UI.facet: [{ 
               id : 'Employee_master',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'EMPMASTER',
               position : 10  },
               
               {
               id : 'BOOKING_DATA',
               purpose : #STANDARD,
               type : #LINEITEM_REFERENCE,
               label : 'BOOKING',
               targetElement : '_empallocation',
               position : 20
               }  ]
    
    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'EMPID'}]
    @UI.identification: [{ position : 10 }]
    key emp_id as EmpId,
     @UI.lineItem: [{ position : 10 , label : 'EMPNAME'}]
    @UI.identification: [{ position : 10 }]
    emp_name as EmpName,
     @UI.lineItem: [{ position : 10 , label : 'COMPANYNAME'}]
    @UI.identification: [{ position : 10 }]
    @Consumption.valueHelpDefinition: [{

        entity: {
            name: 'ZCDS_COMPANYCODES1_DS',
            element: 'CompanyName'
        }
         }]
    company_name as CompanyName,
     @UI.lineItem: [{ position : 10 , label : 'DEGINATION'}]
    @UI.identification: [{ position : 10 }]
     @Consumption.valueHelpDefinition: [{

        entity: {
            name: 'ZCDS_DEGENATION1_DS',
            element: 'DesignationName'
        }
         }]
    designation as Designation,
    _empallocation,
    _companycode, _degination
}
