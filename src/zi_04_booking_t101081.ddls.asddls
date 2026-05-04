@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZI_04_Booking_T101081'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_04_Booking_T101081
  as select from /dmo/booking
  composition [0..*] of ZI_05_BSUPL_T101081 as _BookSup
  association to parent ZI_03_Travel_T10081 as _Travel on $projection.TravelId = _Travel.TravelId
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
