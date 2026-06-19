connection: "ignored_by_script"

explore: orders_bad {  
  from: orders
  label: "Orders Bad"

  # This join will trigger a fan-out validation failure in our script
  join: customers_bad {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_bad.customer_id} ;;
  }
}
