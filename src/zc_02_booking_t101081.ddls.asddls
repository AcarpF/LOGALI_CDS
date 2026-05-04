@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_02_Booking_T101081'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_02_Booking_T101081
  as projection on ZI_04_Booking_T101081
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _BookSup : redirected to composition child ZC_03_BSupl_T101081,
      _Travel  : redirected to parent ZC_01_Travel_T101081
}
