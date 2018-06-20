view: trans_type {
  sql_table_name: dbo.TransType ;;

  dimension: desc {
    type: string
    label: "Transaction Type"
    sql: ${TABLE}."desc" ;;
  }

  dimension: transtype_id {
    hidden: yes
    type: number
    sql: ${TABLE}.transtype_id ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
