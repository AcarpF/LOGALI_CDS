@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_03_BSupl_T101081'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_03_BSupl_T101081
  as projection on ZI_05_BSUPL_T101081
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      /* Associations */
      _Booking : redirected to parent ZC_02_BOOKING_T101081,
      _Travel  : redirected to ZC_01_TRAVEL_T101081
}
