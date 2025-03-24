@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS BOOKING'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_BOOKING_DS as select from zdb_booking_ds
composition [0..*] of ZCDS_SUPPLY_DS as _supply
association to parent ZCG_CDS_TRAVEL as _travel on $projection.TravelId = _travel.TravelId
association [1..1] to /DMO/I_Carrier as _AirlineID on $projection.CarrierId = _AirlineID.AirlineID
association [1..1] to /DMO/I_Customer as _CustomerID on $projection.CustomerId = _CustomerID.CustomerID
association [1..1] to /DMO/I_Connection as  _ConnectionID on $projection.ConnectionId = _ConnectionID.ConnectionID 
and $projection.CarrierId = _ConnectionID.AirlineID
association [1..1] to /DMO/I_Booking_Status_VH as _BookingStatus on $projection.BookingStatus = _BookingStatus.BookingStatus


{

        @UI.facet: [{ 
               id : 'BOOKING_DATA',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'BOOKING',
               position : 10  },
               
               {
               id : 'SUPPLY_DATA',
               purpose : #STANDARD,
               type : #LINEITEM_REFERENCE,
               label : 'SUPPLY',
               targetElement : '_supply',
               position : 20
               } ]

    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 }]
    @UI.identification: [{ position : 10 }]
    key travel_id as TravelId,
    
    @UI.selectionField: [{ position : 20 }]
    @UI.lineItem: [{ position : 20 }]
    @UI.identification: [{ position : 20 }]
    key booking_id as BookingId,
    @UI.identification: [{ position : 30 }]
    booking_date as BookingDate,
    @UI.selectionField: [{ position : 40 }]
    @UI.lineItem: [{ position : 40 }]
    @UI.identification: [{ position : 40 }]
    customer_id as CustomerId,
    @UI.identification: [{ position : 50 }]
    carrier_id as CarrierId,
    @UI.identification: [{ position : 60 }]
    connection_id as ConnectionId,
    @UI.identification: [{ position : 70 }]
    flight_date as FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    @UI.identification: [{ position : 80 }]
    flight_price as FlightPrice,

    currency_code as CurrencyCode,
    @UI.identification: [{ position : 90 }]
    booking_status as BookingStatus,
    @UI.identification: [{ position : 100 }]
    last_changed_at as LastChangedAt,
    _AirlineID,
    _CustomerID,
   _ConnectionID,
    _BookingStatus,
    _travel,
    _supply
}
