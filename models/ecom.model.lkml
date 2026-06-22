connection: "ignored_by_script"

explore: orders_combined {  
  from: orders
  label: "Testing Combined Orders"

  join: customers_good_alias {
    from: customers_good
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_good_alias.customer_id} ;;
  }

  # This join will trigger a fan-out validation failure in our script
  join: customers_bad_alias{
    from: customers_bad
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_bad_alias.customer_id} ;;
  }
}

explore: orders_good_only {  
  from: orders
  label: "Testing Clean Good Orders"

  # This join is structurally sound
  join: customers_good {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_good.customer_id} ;;
  }
}
