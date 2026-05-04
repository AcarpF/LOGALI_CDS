@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_01_Travel_T101081'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_01_Travel_T101081
  as projection on ZI_03_Travel_T10081
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode :'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode :'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZC_02_Booking_T101081,
      _Customer
}
