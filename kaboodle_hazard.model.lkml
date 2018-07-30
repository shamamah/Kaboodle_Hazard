connection: "kaboodle_hazard"

# include all the views
include: "*.view"

# include all the dashboards
#include: "*.dashboard"

datagroup: kaboodle_hazard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 minute"
}

persist_with: kaboodle_hazard_default_datagroup

# - explore: risk_detail


explore: risk_detail {
  description: "Hazard Test"
  label: "Risk Detail Sample (1,000)"
  group_label: "Hazard Sample"  #Grouping in the EXPLORE Dropdown
  view_label: "Hazard Sample"
  hidden: no
  persist_for: "8 hours"
  from: risk_detail
  view_name: risk_detail
  sql_table_name: dbo.riskdetail ;;
  sql_always_where: ${status} <> 'geocoding_error' ;;
}

explore: hazard_insurance {
  description: "Hazard Test"
  label: "Hazard Insurance"
  group_label: "Hazard Sample"  #Grouping in the EXPLORE Dropdown
  view_label: "Transactions"
  hidden: no
  persist_for: "8 hours"
  from: transactions
  view_name: Transactions
  sql_table_name: dbo.transactions ;;

  access_filter: {
    field:agency.agency_name
    user_attribute:hazardins_agency_name
  }

  join: trans_type {
    type: inner
    relationship: many_to_one
    from: "trans_type"
    view_label: "Trans Type"
    sql_on: ${Transactions.transtype_id} = ${trans_type.transtype_id} ;;
  }

  join: policy_type {
    type: inner
    relationship: many_to_one
    from: "policy_type"
    view_label: "Policy Type"
    sql_on: ${Transactions.policytype_id} = ${policy_type.policytype_id} ;;
  }

  join: producer {
    type: inner
    relationship: many_to_one
    from: "producer"
    view_label: "Producer"
    sql_on: ${Transactions.producer_id} = ${producer.producer_id} ;;
  }

  join: agency {
    type: inner
    relationship: many_to_one
    from: agency
    view_label: "Agency"
    sql_on: ${producer.agency_id} = ${agency.agency_id} ;;
  }

}
