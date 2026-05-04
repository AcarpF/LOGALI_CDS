@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity - Association to Parent 2'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAAFM_CDS_E_05_2
  as select from /dmo/book_suppl

  association to parent ZAAFM_CDS_E_05 as _Booking on  $projection.TravelId  = _Booking.TravelId
                                                   and $projection.BookingId = _Booking.BookingId

  association to ZAAFM_CDS_E_04        as _Travel  on  $projection.TravelId = _Travel.TravelId

{
  key travel_id             as TravelId,
  key booking_id            as BookingId,
  key booking_supplement_id as BookingSupplementId,
      supplement_id         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,
      _Booking,
      _Travel
}
