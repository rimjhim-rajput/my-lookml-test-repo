# old: view: customers_bad { sql_table_name: `sales_data.customers_bad` ;; }


view: customers_bad {
  sql_table_name: `large_data.customers_bad` ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;; # Note: Not marked as primary_key because it contains duplicates
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
