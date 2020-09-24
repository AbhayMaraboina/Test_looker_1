connection: "mysql-server"
#iam changing by abhay
# include all the views
include: "/views/**/*.view"

datagroup: demo_sql_new_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_sql_new_default_datagroup

explore: order_lists {}

explore: orderbreakdown {}

explore: salesview {}
