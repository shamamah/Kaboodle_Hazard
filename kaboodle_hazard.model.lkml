connection: "kaboodle_hazard"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: kaboodle_hazard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kaboodle_hazard_default_datagroup

# - explore: risk_detail


explore: risk_detail {
  description: "Hazard Test"
  label: "Risk Detail Sample (1,000)"
  group_label: "Hazard Sample"
  view_label: "Hazard Sample"
  hidden: no
  persist_for: "8 hours"
  from: risk_detail
  view_name: risk_detail
  sql_table_name: dbo.riskdetail ;;
  sql_always_where: ${status} <> 'geocoding_error' ;;
}
