connection: "ignored_by_script"

explore: orders {
  label: "Clean Single Join Verification"

  join: customers_good {
    type: left_outer
    relationship: many_to_one
    sql_on: ${orders.customer_id} = ${customers_good.customer_id} ;;
  }
}
