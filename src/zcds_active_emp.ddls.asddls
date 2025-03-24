@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMP ACTIVE OR INACTIVE'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_ACTIVE_EMP as select from I_Language
{
    key cast( 'A' as abap.char( 4 ))  as CODE,
        cast( 'ACTIVE' as abap.char( 50 )) as TEXT
}
where Language = $session.system_language
 
union

select from I_Language
{
    key cast( 'I' as abap.char( 4 ))  as CODE,
        cast( 'INACTIVE' as abap.char( 50 )) as TEXT
}
where Language = $session.system_language

union

select from I_Language
{
    key cast( 'X' as abap.char( 4 ))  as CODE,
        cast( 'RESIGNED' as abap.char( 50 )) as TEXT
}
where Language = $session.system_language
 