@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPANYCODES1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity ZCDS_COMPANYCODES1_DS as select from ZCDS_COMPANYCODES_DS
{
    key CompanyID,
    @ObjectModel.text.element: [ 'CompanyName' ]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Semantics.text: true
    @Semantics.organization.name: true
    CompanyName
    
}
