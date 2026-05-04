@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity - Entity Projection 3'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAAFM_CDS_E_08
  as projection on ZAAFM_CDS_E_05_2
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      /* Associations */
      _Booking : redirected to parent ZAAFM_CDS_E_07,
      _Travel  : redirected to ZAAFM_CDS_E_06
}
