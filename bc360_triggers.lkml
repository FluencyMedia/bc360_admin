datagroup: dg_bc360_clients {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'arch_clients' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_flat_arch {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'flat_arch' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_campaigns {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'arch_campaign' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_outcomes {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'arch_outcomes' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_services {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'arch_services' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_rankings {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'mx_rankings' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_mx_marketing {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'mx_marketing' ;;
  max_cache_age: "24 hours"
}
