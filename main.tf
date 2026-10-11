resource "google_service_networking_connection" "service_networking_connections" {
  for_each = var.service_networking_connections

  network                 = each.value.network
  reserved_peering_ranges = each.value.reserved_peering_ranges
  service                 = each.value.service
  deletion_policy         = each.value.deletion_policy
  update_on_creation_fail = each.value.update_on_creation_fail

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

