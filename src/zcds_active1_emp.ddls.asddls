@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CODE'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity ZCDS_ACTIVE1_EMP as select from ZCDS_ACTIVE_EMP
{
    key CODE,
      @ObjectModel.text.element: [ 'TEXT' ]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Semantics.text: true
    @Semantics.organization.name: true
    TEXT as text
}
