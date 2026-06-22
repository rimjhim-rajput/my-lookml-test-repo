connection: "ignored_by_script"

explore: orders {
  label: "Implicit Fallback Architecture Test"

  join: customers_bad {
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_bad.customer_id} ;;
  }
}
