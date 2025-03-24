@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'STATUS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_STATUS_DS as select from I_Language
{
    key cast( 'ACT' as abap.char( 10 ))  as CODE,
        cast( 'ACTIVE' as abap.char( 50 )) as STATUS
}
where Language = $session.system_language
 
union
select from I_Language
{
    key cast( 'INCT' as abap.char( 10 ))  as CODE,
        cast( 'INACTIVE' as abap.char( 50 )) as STATUS
}
where Language = $session.system_language
 
union
select from I_Language
{
    key cast( 'RESIG' as abap.char( 10 ))  as CODE,
        cast( 'RESIGNED' as abap.char( 50 )) as STATUS
}
where Language = $session.system_language
 