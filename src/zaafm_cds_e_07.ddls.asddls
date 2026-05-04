@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity - Entity Projection 2'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAAFM_CDS_E_07
  as projection on ZAAFM_CDS_E_05
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
      _BookSup : redirected to composition child ZAAFM_CDS_E_08,
      _Travel : redirected to parent ZAAFM_CDS_E_06
}
