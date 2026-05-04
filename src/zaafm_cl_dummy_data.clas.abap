CLASS zaafm_cl_dummy_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaafm_cl_dummy_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_results TYPE TABLE OF zaafm_employee.

    lt_results = VALUE #( ( id = '11UX' name = 'Lorena' )
                          ( id = '12UX' name = 'Rosa' ) ).

    MODIFY zaafm_employee FROM TABLE @lt_results.
    IF sy-subrc EQ 0.
      out->write( 'Data Inserted' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
