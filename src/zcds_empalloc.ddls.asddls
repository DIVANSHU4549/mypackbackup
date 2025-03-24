@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS emp allocation'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_empalloc as select from zempallocationds
association to parent ZCDS_EMPMASTER_DS as _EmpMaster
    on $projection.EmpId = _EmpMaster.EmpId
association [0..*] to ZCDS_STATUS1_DS as _status on $projection.Status = _status.STATUS
association [0..*] to ZCDS_ACTIVE1_EMP as _code on $projection.Active = _code.CODE  
{
    @UI.facet: [{ 
               id : 'Employee_allocation',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'EMPalloc',
               position : 10  }]
    
    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'EMPID'}]
    @UI.identification: [{ position : 10 }]           
    key emp_id as EmpId,
    @UI.lineItem: [{ position : 20 , label : 'ALLOCATIONID'}]
    @UI.identification: [{ position : 20 }] 
    key allocation_id as AllocationId,
    @UI.lineItem: [{ position : 30 , label : 'PROFITCENTER'}]
    @UI.identification: [{ position : 30 }] 
    profit_center as ProfitCenter,
    @UI.lineItem: [{ position : 40 , label : 'ALLOCATIONPER'}]
    @UI.identification: [{ position : 40 }] 
    allocation_per as AllocationPer,
    @UI.lineItem: [{ position : 50 , label : 'Active'}]
    @UI.identification: [{ position : 50 }]
        @Consumption.valueHelpDefinition: [{

        entity: {
            name: 'ZCDS_ACTIVE1_EMP',
            element: 'CODE'
        }
         }] 
    active as Active,
        @UI.lineItem: [{ position : 60 , label : 'Status'}]
    @UI.identification: [{ position : 60 }] 
       @Consumption.valueHelpDefinition: [{

        entity: {
            name: 'ZCDS_STATUS1_DS',
            element: 'STATUS'
        }
         }]
    status as Status,
          @UI.lineItem: [{ position : 80 , label : 'FromDate'}]
    @UI.identification: [{ position : 80 }] 
    from_date as FromDate,
        @UI.lineItem: [{ position : 70 , label : 'ToDate'}]
    @UI.identification: [{ position : 70 }] 
    to_date as ToDate,
    _EmpMaster
}
