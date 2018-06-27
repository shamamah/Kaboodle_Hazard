view: transactions {
  sql_table_name: dbo.Transactions ;;

  dimension: transaction_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.transaction_id ;;
  }

  dimension_group: cancellation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancellation_date ;;
  }

  dimension: change_in_prem {
    type: number
    sql: ${TABLE}.change_in_prem ;;
  }

  dimension_group: effective {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.effective_date ;;
  }

  dimension_group: expiration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expiration_date ;;
  }

  dimension: insured_first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.insured_first_name ;;
  }

  dimension: insured_last_name {
    hidden:  yes
    type: string
    sql: ${TABLE}.insured_last_name ;;
  }

  dimension: insured_name {
    type: string
    label: "Name"
    sql:  ${insured_first_name} + ' ' + ${insured_last_name} ;;
  }

  dimension: policy_number {
    type: string
    label: "Policy Number"
    sql: ${TABLE}.policy_number ;;
  }

  dimension: policytype_id {
    hidden: yes
    type: number
    sql: ${TABLE}.policytype_id ;;
  }

  dimension: producer_id {
    hidden: yes
    type: number
    sql: ${TABLE}.producer_id ;;
  }

  dimension: quote_number {
    type: string
    label: "Quote Number"
    sql: ${TABLE}.quote_number ;;
  }

  dimension_group: transaction_effective {
    type: time
    label: "Trans Effective"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_effective_date ;;
  }

  dimension: transtype_id {
    hidden: yes
    type: number
    sql: ${TABLE}.transtype_id ;;
  }

  dimension: written_prem {
    hidden: yes
    type: number
    sql: ${TABLE}.written_prem ;;
  }

  dimension: zip {
    type: zipcode
    sql: LEFT(${TABLE}.zip,5) ;;
    drill_fields: [detail*]
  }

  measure: quote_count {
    type: count
    label: "Quote Count"
    #drill_fields: [detail*]
    #filters: {
    #  field: policy_number
    #  value: "NULL"
    #}
  }

  measure: pending_quote_count {
    type: count
    label: "Pending Quote Count"
    drill_fields: [detail*]
    filters: {
      field: policy_number
      value: "NULL"
    }
  }

  measure: policy_count {
    type: count
    label: "Policy Count"
    #drill_fields: [detail*]
    filters: {
      field: policy_number
      value: "-NULL"
    }
  }

measure: conversion_ratio {
  type: number
  label:  "Conversion Ratio"
  sql: ((${policy_count}*100)/(${quote_count})) ;;
}

  measure:  written_premium {
    type: sum
    label: "Written Premium"
    sql: written_prem ;;
    filters: {
      field: policy_number
      value: "-NULL"
    }
  }

  measure:  quoted_premium {
    type: sum
    label: "Quoted Premium"
    sql: written_prem ;;
    filters: {
      field: policy_number
      value: "NULL"
    }
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      transaction_id,
      insured_first_name,
      insured_last_name,
      producer.producer_id,
      producer.producer_first_name,
      producer.producer_last_name
    ]
  }
}
