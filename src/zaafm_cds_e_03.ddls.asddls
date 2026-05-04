@EndUserText.label: 'CDS Entity - Abstract Entity'
define abstract entity ZAAFM_CDS_E_03
  with parameters
    pTravel : /dmo/travel_id
{
  travel_id   : /dmo/travel_id;
  agency_id   : /dmo/agency_id;
  customer_id : /dmo/customer_id;
  begin_date  : /dmo/begin_date;
  end_date    : /dmo/end_date;

}
