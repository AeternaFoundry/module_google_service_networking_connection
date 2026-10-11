output "service_networking_connections_id" {
  description = "Map of id values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no id are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_networking_connections_deletion_policy" {
  description = "Map of deletion_policy values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no deletion_policy are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "service_networking_connections_network" {
  description = "Map of network values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no network are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.network if v.network != null && length(v.network) > 0 }
}
output "service_networking_connections_peering" {
  description = "Map of peering values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no peering are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.peering if v.peering != null && length(v.peering) > 0 }
}
output "service_networking_connections_reserved_peering_ranges" {
  description = "Map of reserved_peering_ranges values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no reserved_peering_ranges are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.reserved_peering_ranges if v.reserved_peering_ranges != null && length(v.reserved_peering_ranges) > 0 }
}
output "service_networking_connections_service" {
  description = "Map of service values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no service are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.service if v.service != null && length(v.service) > 0 }
}
output "service_networking_connections_update_on_creation_fail" {
  description = "Map of update_on_creation_fail values across all service_networking_connections, keyed the same as var.service_networking_connections except keys with no update_on_creation_fail are omitted"
  value       = { for k, v in google_service_networking_connection.service_networking_connections : k => v.update_on_creation_fail if v.update_on_creation_fail != null }
}

