@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Designation HELP'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_DEGENATION_DS as select from I_Language
{
    key cast( '1' as abap.char( 2 ))  as DesignationID,
        cast( 'Data Analyst' as abap.char( 50 )) as DesignationName
}
where Language = $session.system_language
 
union
select from I_Language
{
    key cast( '2' as abap.char( 2 ))  as DesignationID,
        cast( 'Marketing Coordinator' as abap.char( 50 )) as DesignationName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '3' as abap.char( 2 ))  as DesignationID,
        cast( 'Sales Executive' as abap.char( 50 )) as DesignationName
}
where Language = $session.system_language
 
union
select from I_Language
{
    key cast( '4' as abap.char( 2 ))  as DesignationID,
        cast( 'Financial Analyst' as abap.char( 50 )) as DesignationName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '5' as abap.char( 2 ))  as DesignationID,
        cast( 'Product Designer ' as abap.char( 50 )) as DesignationName
}
where Language = $session.system_language
 
union
select from I_Language
{
    key cast( '6' as abap.char( 2 ))  as DesignationID,
        cast( 'Content Writer' as abap.char( 50 )) as DesignationName
}
where Language = $session.system_language
