@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS SUPPLY'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_SUPPLY_DS as select from zdt_supply_ds
association to parent ZCDS_BOOKING_DS as _booking on $projection.TravelId = _booking.TravelId
                                                and $projection.BookingId = _booking.BookingId
association [1..1] to ZCG_CDS_TRAVEL as _Travel on $projection.TravelId = _Travel.TravelId
association [1..1] to /DMO/I_Supplement as _SupplementID on $projection.SupplementId = _SupplementID.SupplementID
association [1..*] to /DMO/I_SupplementText as _SupplementText on $projection.SupplementId = _SupplementText.SupplementID

{
     @UI.facet: [{ 
               id : 'SUPPLY_DATA',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'SUPPLY',
               position : 10  }]


    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 }]
    @UI.identification: [{ position : 10 }]
    key travel_id as TravelId, 
    @UI.selectionField: [{ position : 20 }]
    @UI.lineItem: [{ position : 20 }]
    @UI.identification: [{ position : 20 }] 
    key booking_id as BookingId,
    @UI.selectionField: [{ position : 30 }]
    @UI.lineItem: [{ position : 30 }]
    @UI.identification: [{ position : 30 }]
    key booking_supplement_id as BookingSupplementId,
    @UI.identification: [{ position : 40 }]
    supplement_id as SupplementId,
    @Semantics.amount.currencyCode: 'CurrencyCode'
     @UI.identification: [{ position : 50 }]
    price as Price,
    currency_code as CurrencyCode,
    @UI.identification: [{ position : 60 }]
    last_changed_at as LastChangedAt,
    _SupplementID,
    _SupplementText, 
    _booking,
    _Travel
    
}
