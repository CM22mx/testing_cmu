view: getdates {
#   # Or, you could make this view a derived table, like this:
   derived_table: {
     sql: SELECT YEAR(CURRENT_DATE())-4 as anio
       ;;
   }
#
#   # Define your dimensions and measures here, like this:
   dimension: anio {
#     description: "Unique ID for each user that has ordered"
     type: number
     sql: ${TABLE}.anio ;;
   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
 }
