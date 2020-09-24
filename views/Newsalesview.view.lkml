explore: newsalesview {}


view: newsalesview {


  derived_table: {

    sql:

        select *

        from salesfn (({% parameter countryparam %}))

        ;;

    }

  dimension: orderid {
    type: string
    primary_key: yes
    sql: ${TABLE}.orderid ;;
  }

  dimension: customer {
    type: string

    sql: ${TABLE}.customer;;}

  dimension: orderdate {
    type: string

    sql: ${TABLE}.orderdate;;}

  dimension: country {
    type: string

    sql: ${TABLE}.country;;
  }
  dimension: state {
    type: string

    sql: ${TABLE}.state;;
  }
  dimension: productname {
    type: string

    sql: ${TABLE}.productname;;
  }
  dimension: category {
    type: string

    sql: ${TABLE}.category;;
  }
  dimension: subcategory {
    type: string

    sql: ${TABLE}.subcategory;;
  }

  dimension: sales {
    type: number

    sql: ${TABLE}.sales ;;
  }

  dimension: quantity {
    type: number

    sql: ${TABLE}.quantity ;;
  }





    parameter: countryparam {

      type: string

    }













}
