explore: newsalesview1 {}


view: newsalesview1 {


  derived_table: {

    sql:

        select *

        from ( INSERT INTO #temp1(orderid,customer ,orderdate,country,state,productname
                     , category,subcategory,sales,quantity)
                       exec SalesProcwithparam @category={% parameter categoryparam %} ,@subcategory={% parameter subcategoryparam %})

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





    parameter: categoryparam {

      type: string

    }


  parameter: subcategoryparam {

    type: string

  }













  }
