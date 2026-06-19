connection: "ignored_by_script"

explore: orders_combined {  
  from: orders
  label: "Orders"

  # This join is structurally sound
  join: customers_good {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_good.customer_id} ;;
  }

  # This join will trigger a fan-out validation failure in our script
  join: customers_bad {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_bad.customer_id} ;;
  }
}

explore: orders_good {  
  from: orders
  label: "Orders Good"

  # This join is structurally sound
  join: customers_good {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_good.customer_id} ;;
  }
}
