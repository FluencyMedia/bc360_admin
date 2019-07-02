datagroup: dg_bc360_clients {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `arch_clients.__TABLES__` where table_id = 'arch_client_org' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_arch_all {
  sql_trigger:  SELECT
                  MAX(last_modified_time) last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name LIKE 'arch_%' ;;
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
                  TIMESTAMP_MILLIS(last_modified_time) last_modified
                FROM `arch_campaigns.__TABLES__` where table_id = 'arch_campaigns_base' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_outcomes {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `arch_outcomes.__TABLES__` where table_id = 'arch_outcomes_base' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_services {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `arch_services.__TABLES__` where table_id = 'arch_services' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_rankings {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `mx_rankings.__TABLES__` where table_id = 'mx_rankings_core' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_roadmaps {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `mx_roadmaps.__TABLES__` where table_id = 'roadmap_core_base' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_mx_marketing {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `mx_marketing.__TABLES__` where table_id = 'mx_marketing_base' ;;
  max_cache_age: "24 hours"
}


datagroup: dg_bc360_mx_flat {
  sql_trigger:  SELECT
                  last_modified_time last_modified
                FROM `bc360-main.INFORMATION_SCHEMA.SCHEMATA`
                WHERE schema_name = 'flat_mx' ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_mx_analytics {
  sql_trigger:  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `mx_analytics.__TABLES__` where table_id = 'events_media_live' ;;
  max_cache_age: "24 hours"
}
