@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPANYCODES'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_COMPANYCODES_DS as select from I_Language
{
    key cast( '1' as abap.char( 2 ))  as CompanyID,
        cast( 'Tech Innovators Inc' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
 
union
select from I_Language
{
    key cast( '2' as abap.char( 2 ))  as CompanyID,
        cast( 'Global Solutions Ltd' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '3' as abap.char( 2 ))  as CompanyID,
        cast( 'Apex Enterprises' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '4' as abap.char( 2 ))  as CompanyID,
        cast( 'Visionary Ventures' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '5' as abap.char( 2 ))  as CompanyID,
        cast( 'Stellar Technologies' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '6' as abap.char( 2 ))  as CompanyID,
        cast( 'Quantum Dynamics' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '7' as abap.char( 2 ))  as CompanyID,
        cast( 'Horizon Industries' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '8' as abap.char( 2 ))  as CompanyID,
        cast( 'Pinnacle Partners' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '9' as abap.char( 2 ))  as CompanyID,
        cast( 'Nexus Networks' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '10' as abap.char( 2 ))  as CompanyID,
        cast( 'Synergy Systems' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
union
select from I_Language
{
    key cast( '11' as abap.char( 2 ))  as CompanyID,
        cast( 'Elite Enterprises' as abap.char( 50 )) as CompanyName
}
where Language = $session.system_language
