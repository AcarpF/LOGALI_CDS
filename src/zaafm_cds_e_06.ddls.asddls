@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity - Entity Projection 1'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZAAFM_CDS_E_06
  as projection on ZAAFM_CDS_E_04
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
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZAAFM_CDS_E_07,
      _Customer
}
