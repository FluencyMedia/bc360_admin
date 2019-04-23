datagroup: dg_bc360_clients {
  sql_trigger:  SELECT
                  MAX(trg.last_updated)
                FROM arch_client_orgs.trg_last_updated trg ;;
  max_cache_age: "24 hours"
}
