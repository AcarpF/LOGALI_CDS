@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZI_03_Travel_T10081'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_03_Travel_T10081
  as select from /dmo/travel
  composition [0..*] of ZI_04_Booking_T101081 as _Booking
  association [1..1] to /DMO/I_Agency         as _Agency   on $projection.AgencyId = _Agency.AgencyID
  association [1..1] to /DMO/I_Customer       as _Customer on $projection.CustomerId = _Customer.CustomerID
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode :'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode :'CurrencyCode'
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      _Booking,
      _Agency,
      _Customer
}
