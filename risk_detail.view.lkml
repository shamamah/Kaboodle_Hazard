view: risk_detail {
  sql_table_name: dbo.RiskDetail ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: aggravated_assault {
    type: string
    sql: ${TABLE}.aggravated_assault ;;
  }

  dimension: base_flood_elevation {
    type: string
    sql: ${TABLE}.base_flood_elevation ;;
  }

  dimension: brownfield {
    type: string
    sql: ${TABLE}.brownfield ;;
  }

  dimension: burglary {
    type: string
    sql: ${TABLE}.burglary ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: coast_distance {
    type: string
    sql: ${TABLE}.coast_distance ;;
  }

  dimension: convection_storm {
    type: string
    sql: ${TABLE}.convection_storm ;;
  }

  dimension: convection_storm_per_decade {
    type: number
    sql: ${TABLE}.convection_storm_per_decade ;;
  }

  dimension: crime {
    type: string
    sql: ${TABLE}.crime ;;
  }

  dimension: designated_fault {
    type: string
    sql: ${TABLE}.designated_fault ;;
  }

  dimension: drive_distance_fire_station {
    type: string
    sql: ${TABLE}.drive_distance_fire_station ;;
  }

  dimension: drive_time_fire_station {
    type: string
    sql: ${TABLE}.drive_time_fire_station ;;
  }

  dimension: drought {
    type: string
    sql: ${TABLE}.drought ;;
  }

  dimension: earthquake {
    type: string
    sql: ${TABLE}.earthquake ;;
  }

  dimension: elevation_in_feet {
    type: number
    sql: ${TABLE}.elevation_in_feet ;;
  }

  dimension: fault_earthquake {
    type: string
    sql: ${TABLE}.fault_earthquake ;;
  }

  dimension: fema_all_flood {
    type: string
    sql: ${TABLE}.fema_all_flood ;;
  }

  dimension: fema_ar_revert {
    type: string
    sql: ${TABLE}.fema_ar_revert ;;
  }

  dimension: fema_ar_subtrv {
    type: string
    sql: ${TABLE}.fema_ar_subtrv ;;
  }

  dimension: fema_bfe_revert {
    type: number
    sql: ${TABLE}.fema_bfe_revert ;;
  }

  dimension: fema_dep_revert {
    type: number
    sql: ${TABLE}.fema_dep_revert ;;
  }

  dimension: fema_depth {
    type: number
    sql: ${TABLE}.fema_depth ;;
  }

  dimension: fema_dfirm_id {
    type: string
    sql: ${TABLE}.fema_dfirm_id ;;
  }

  dimension: fema_dual_zone {
    type: string
    sql: ${TABLE}.fema_dual_zone ;;
  }

  dimension_group: fema_firm {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fema_firm_date ;;
  }

  dimension: fema_firm_date_cid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fema_firm_date_cid ;;
  }

  dimension: fema_firm_date_pol_ar_id {
    type: string
    sql: ${TABLE}.fema_firm_date_pol_ar_id ;;
  }

  dimension: fema_fld_ar_id {
    type: string
    sql: ${TABLE}.fema_fld_ar_id ;;
  }

  dimension: fema_fld_zone {
    type: string
    sql: ${TABLE}.fema_fld_zone ;;
  }

  dimension: fema_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fema_gid ;;
  }

  dimension: fema_len_unit {
    type: string
    sql: ${TABLE}.fema_len_unit ;;
  }

  dimension: fema_sfha_tf {
    type: string
    sql: ${TABLE}.fema_sfha_tf ;;
  }

  dimension: fema_shape_area {
    type: number
    sql: ${TABLE}.fema_shape_area ;;
  }

  dimension: fema_shape_leng {
    type: number
    sql: ${TABLE}.fema_shape_leng ;;
  }

  dimension: fema_source_cit {
    type: string
    sql: ${TABLE}.fema_source_cit ;;
  }

  dimension: fema_static_bfe {
    type: number
    sql: ${TABLE}.fema_static_bfe ;;
  }

  dimension: fema_study_typ {
    type: string
    sql: ${TABLE}.fema_study_typ ;;
  }

  dimension: fema_v_datum {
    type: string
    sql: ${TABLE}.fema_v_datum ;;
  }

  dimension: fema_vel_unit {
    type: string
    sql: ${TABLE}.fema_vel_unit ;;
  }

  dimension: fema_velocity {
    type: number
    sql: ${TABLE}.fema_velocity ;;
  }

  dimension: fema_version_id {
    type: string
    sql: ${TABLE}.fema_version_id ;;
  }

  dimension: fema_zone_subty {
    type: string
    sql: ${TABLE}.fema_zone_subty ;;
  }

  dimension: fire_protection {
    type: string
    sql: ${TABLE}.fire_protection ;;
  }

  dimension: fire_station_type {
    type: string
    sql: ${TABLE}.fire_station_type ;;
  }

  dimension: forcible_rape {
    type: string
    sql: ${TABLE}.forcible_rape ;;
  }

  dimension: forcible_robbery {
    type: string
    sql: ${TABLE}.forcible_robbery ;;
  }

  dimension: fracking_earthquake {
    type: string
    sql: ${TABLE}.fracking_earthquake ;;
  }

  dimension: hail {
    type: string
    sql: ${TABLE}.hail ;;
  }

  dimension: hail_per_decade {
    type: number
    sql: ${TABLE}.hail_per_decade ;;
  }

  dimension: hazardhub_flood {
    type: string
    sql: ${TABLE}.hazardhub_flood ;;
  }

  dimension: hh_fpc_code {
    type: string
    sql: ${TABLE}.hh_fpc_code ;;
  }

  dimension: hurricane {
    type: string
    sql: ${TABLE}.hurricane ;;
  }

  dimension: landslide {
    type: string
    sql: ${TABLE}.landslide ;;
  }

  dimension: larceny {
    type: string
    sql: ${TABLE}.larceny ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lightning {
    type: string
    sql: ${TABLE}.lightning ;;
  }

  dimension: lightning_per_decade {
    type: number
    sql: ${TABLE}.lightning_per_decade ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: mine_subsidence {
    type: string
    sql: ${TABLE}.mine_subsidence ;;
  }

  dimension: motor_vehicle_theft {
    type: string
    sql: ${TABLE}.motor_vehicle_theft ;;
  }

  dimension: murder {
    type: string
    sql: ${TABLE}.murder ;;
  }

  dimension: nearest_fire_station {
    type: string
    sql: ${TABLE}.nearest_fire_station ;;
  }

  dimension: premium_tax_auth_ta {
    type: string
    sql: ${TABLE}.premium_tax_auth_ta ;;
  }

  dimension: premium_tax_city {
    type: string
    sql: ${TABLE}.premium_tax_city ;;
  }

  dimension: premium_tax_city_des {
    type: string
    sql: ${TABLE}.premium_tax_city_des ;;
  }

  dimension: premium_tax_county {
    type: string
    sql: ${TABLE}.premium_tax_county ;;
  }

  dimension: premium_tax_dt_vint {
    type: string
    sql: ${TABLE}.premium_tax_dt_vint ;;
  }

  dimension: premium_tax_fips {
    type: string
    sql: ${TABLE}.premium_tax_fips ;;
  }

  dimension: premium_tax_fips_ta {
    type: string
    sql: ${TABLE}.premium_tax_fips_ta ;;
  }

  dimension: premium_tax_fire_zone {
    type: string
    sql: ${TABLE}.premium_tax_fire_zone ;;
  }

  dimension: premium_tax_gnis {
    type: string
    sql: ${TABLE}.premium_tax_gnis ;;
  }

  dimension: premium_tax_prem_hh_id {
    type: string
    sql: ${TABLE}.premium_tax_prem_hh_id ;;
  }

  dimension: premium_tax_tax_cd_1 {
    type: string
    sql: ${TABLE}.premium_tax_tax_cd_1 ;;
  }

  dimension: premium_tax_tax_cd_2 {
    type: string
    sql: ${TABLE}.premium_tax_tax_cd_2 ;;
  }

  dimension: radon {
    type: string
    sql: ${TABLE}.radon ;;
  }

  dimension: rcv {
    type: number
    sql: ${TABLE}.RCV ;;
  }

  dimension: re_tier_counties {
    type: string
    sql: ${TABLE}.re_tier_counties ;;
  }

  dimension: sinkhole {
    type: string
    sql: ${TABLE}.sinkhole ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state1 {
    type: string
    sql: ${TABLE}.state1 ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: superfund {
    type: string
    sql: ${TABLE}.superfund ;;
  }

  dimension: surge_max {
    type: string
    sql: ${TABLE}.surge_max ;;
  }

  dimension: tornado {
    type: string
    sql: ${TABLE}.tornado ;;
  }

  dimension: tornado_per_decade {
    type: string
    sql: ${TABLE}.tornado_per_decade ;;
  }

  dimension: tsunami {
    type: string
    sql: ${TABLE}.tsunami ;;
  }

  dimension: water_type {
    type: string
    sql: ${TABLE}.water_type ;;
  }

  dimension: wildfire {
    type: string
    sql: ${TABLE}.wildfire ;;
  }

  dimension: wildfire_description {
    type: string
    sql: ${TABLE}.wildfire_description ;;
  }

  dimension: wildfire_distance_to_high_area {
    type: number
    sql: ${TABLE}.wildfire_distance_to_high_area ;;
  }

  dimension: wildfire_housing_density {
    type: number
    sql: ${TABLE}.wildfire_housing_density ;;
  }

  dimension: wildfire_risk {
    type: string
    sql: ${TABLE}.wildfire_risk ;;
  }

  dimension: wildfire_risk_score {
    type: number
    sql: ${TABLE}.wildfire_risk_score ;;
  }

  dimension: wind {
    type: string
    sql: ${TABLE}.wind ;;
  }

  dimension: wind_born_debris {
    type: string
    sql: ${TABLE}.wind_born_debris ;;
  }

  dimension: wind_per_decade {
    type: number
    sql: ${TABLE}.wind_per_decade ;;
  }

  dimension: wind_pool {
    type: string
    sql: ${TABLE}.wind_pool ;;
  }

  dimension: wind_region {
    type: string
    sql: ${TABLE}.wind_region ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: [id,address,city,state,zip,lat,lng]
  }
}
