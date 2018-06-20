view: policy_type {
  sql_table_name: dbo.PolicyType ;;

  dimension: desc {
    type: string
    label: "Policy Type"
    sql: ${TABLE}."desc" ;;
  }

  dimension: policytype_id {
    hidden: yes
    type: number
    sql: ${TABLE}.policytype_id ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
