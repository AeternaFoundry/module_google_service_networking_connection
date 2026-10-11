variable "service_networking_connections" {
  description = <<EOT
Map of service_networking_connections, attributes below
Required:
    - network
    - reserved_peering_ranges
    - service
Optional:
    - deletion_policy
    - update_on_creation_fail
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    network                 = string
    reserved_peering_ranges = list(string)
    service                 = string
    deletion_policy         = optional(string)
    update_on_creation_fail = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

