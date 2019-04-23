connection: "bc360_main"

datagroup: dg_bc360_clients {
  sql_trigger:  SELECT
                  MAX(trg.last_updated)
                FROM arch_clients.trg_last_updated) trg ;;
  max_cache_age: "24 hours"
}
