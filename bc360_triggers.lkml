datagroup: dg_bc360_clients {
  sql_trigger:  SELECT
                  MAX(trg.last_updated)
                FROM arch_clients.trg_last_updated trg ;;
  max_cache_age: "24 hours"
}

datagroup: dg_bc360_rankings {
  sql_trigger:  SELECT MAX(last_modified) last_modified FROM (
                  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `mx_rankings.__TABLES__` where table_id = 'flat_terms'
                  UNION ALL
                  SELECT
                    TIMESTAMP_MILLIS(last_modified_time) last_modified
                  FROM `mx_rankings.__TABLES__` where table_id = 'flat_terms'
                ) GROUP BY last_modified;;
  max_cache_age: "24 hours"
}
