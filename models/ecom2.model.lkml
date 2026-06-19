connection: "ignored_by_script"

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
