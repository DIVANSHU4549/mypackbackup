@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DEGENATION1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity ZCDS_DEGENATION1_DS as select from ZCDS_DEGENATION_DS
{
    key DesignationID,
    @ObjectModel.text.element: [ 'DesignationName' ]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Semantics.text: true
    @Semantics.organization.name: true
    DesignationName
}
