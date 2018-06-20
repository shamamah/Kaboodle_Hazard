view: producer {
  sql_table_name: dbo.Producer ;;

  dimension: producer_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.producer_id ;;
  }

  dimension: agency_id {
    hidden: yes
    type: number
    # hidden: yes
    sql: ${TABLE}.agency_id ;;
  }

  dimension: producer_first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.producer_first_name ;;
  }

  dimension: producer_last_name {
    hidden: yes
    type: string
    sql: ${TABLE}.producer_last_name ;;
  }

  dimension: producer_full_name {
    type: string
    label: "Producer Name"
    sql: producer_first_name + ' ' + producer_last_name ;;
  }

  measure: count {
   hidden:yes
  type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      producer_id,
      producer_first_name,
      producer_last_name,
      agency.agency_id,
      agency.agency_name,
      transactions.count
    ]
  }
}
