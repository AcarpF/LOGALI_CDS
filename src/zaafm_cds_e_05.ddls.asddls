@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity - Association to Parent 1'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAAFM_CDS_E_05
  as select from /dmo/booking
  composition [0..*] of ZAAFM_CDS_E_05_2 as _BookSup
  association to parent ZAAFM_CDS_E_04 as _Travel on $projection.TravelId = _Travel.TravelId



{
  key travel_id     as TravelId,
  key booking_id    as BookingId,
      booking_date  as BookingDate,
      customer_id   as CustomerId,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,
      _Travel,
      _BookSup

}
