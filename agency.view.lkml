view: agency {
  sql_table_name: dbo.Agency ;;

  dimension: agency_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.agency_id ;;
  }

  dimension: agency_city {
    type: string
    label: "City"
    sql: ${TABLE}.agency_city ;;
  }

  dimension: agency_name {
    type: string
    label: "Agency Name"
    sql: ${TABLE}.agency_name ;;
  }

  dimension: agency_state {
    type: string
    label: "State"
    sql: ${TABLE}.agency_state ;;
  }

  dimension: agency_zip {
    type: string
    label: "Zip"
    sql: ${TABLE}.agency_zip ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [agency_id, agency_name, producer.count]
  }
}
