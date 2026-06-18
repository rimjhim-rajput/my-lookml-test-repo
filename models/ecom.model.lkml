connection: "ignored_by_script"

explore: order_analysis {
  from: orders
  
  # This join is structurally sound
  join: customers_good {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_analysis.customer_id} = ${customers_good.customer_id} ;;
  }

  # This join will trigger a fan-out validation failure in our script
  join: customers_bad {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_analysis.customer_id} = ${customers_bad.customer_id} ;;
  }
}
