@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TRAVEL CDS VIEW'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCG_CDS_TRAVEL as select from zds_dt_travel

composition [0..*] of ZCDS_BOOKING_DS as _booking
association [0..1] to /DMO/I_Agency  as _Agency on $projection.AgencyId = _Agency.AgencyID 
association [0..1] to /DMO/I_Customer as _Customer on $projection.CustomerId = _Customer.CustomerID
association [1..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
association [1..1] to /DMO/I_Overall_Status_VH as _Overallstatus on $projection.OverallStatus = _Overallstatus.OverallStatus




{
        @UI.facet: [{ 
               id : 'FLIGHT_DATA',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'Flights',
               position : 10  },
               
               {
               id : 'BOOKING_DATA',
               purpose : #STANDARD,
               type : #LINEITEM_REFERENCE,
               label : 'BOOKING',
               targetElement : '_booking',
               position : 20
               }  ]

    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 }]
    @UI.identification: [{ position : 10 }]
    key travel_id as TravelId,
    
    @UI.selectionField: [{ position : 20 }]
    @UI.lineItem: [{ position : 20 }]
    @UI.identification: [{ position : 20 }]
    agency_id as AgencyId,
  
    @UI.selectionField: [{ position : 30 }]
    @UI.lineItem: [{ position : 30 }]
    @UI.identification: [{ position : 30 }]
    customer_id as CustomerId,
    
    @UI.identification: [{ position : 40 }]
    begindate as Begindate,
    
     @UI.identification: [{ position : 50 }]
    enddate as Enddate,
     @Semantics.amount.currencyCode: 'CurrencyCode'
     @UI.identification: [{ position : 60 }]
    booking_fee as BookingFee,
     @Semantics.amount.currencyCode: 'CurrencyCode'
      @UI.identification: [{ position : 70 }]
    totalprice as Totalprice,
    currency_code as CurrencyCode,
     @UI.identification: [{ position : 80 }]
    description as Description,
     @UI.identification: [{ position : 90 }]
    overall_status as OverallStatus,
     @UI.identification: [{ position : 100 }]
    created_by as CreatedBy,
     @UI.identification: [{ position : 110 }]
    created_at as CreatedAt,
     @UI.identification: [{ position : 120 }]
    last_changed_by as LastChangedBy,
     @UI.identification: [{ position : 130 }]
    last_changed_at as LastChangedAt,
    _Agency, 
    _Customer,
    _Currency,
    _Overallstatus,
    _booking
    

}
