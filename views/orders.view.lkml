# old: view: orders { sql_table_name: `sales_data.orders` ;; }


view: orders {
  sql_table_name: `large_data.orders` ;;

  dimension: order_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: total_revenue {
    type: sum
    sql: ${order_amount} ;;
  }
}
