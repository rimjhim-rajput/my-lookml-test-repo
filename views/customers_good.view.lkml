# old: view: customers_good { sql_table_name: `sales_data.customers_good` ;; }


view: customers_good {
  sql_table_name: `large_data.customers_good` ;;

  dimension: customer_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }
}
