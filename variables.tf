variable "magic_wan_ipsec_tunnels" {
  description = <<EOT
Map of magic_wan_ipsec_tunnels, attributes below
Required:
    - account_id
    - cloudflare_endpoint
    - interface_address
    - name
Optional:
    - automatic_return_routing
    - bgp
    - custom_remote_identities
    - customer_endpoint
    - description
    - health_check
    - interface_address6
    - psk
    - replay_protection
EOT

  type = map(object({
    account_id               = string
    cloudflare_endpoint      = string
    interface_address        = string
    name                     = string
    automatic_return_routing = optional(bool)
    bgp = optional(object({
      customer_asn   = number
      extra_prefixes = optional(list(string))
      md5_key        = optional(string)
    }))
    custom_remote_identities = optional(object({
      fqdn_id = optional(string)
    }))
    customer_endpoint = optional(string)
    description       = optional(string)
    health_check = optional(object({
      direction = optional(string)
      enabled   = optional(bool)
      rate      = optional(string)
      target = optional(object({
        saved = optional(string)
      }))
      type = optional(string)
    }))
    interface_address6 = optional(string)
    psk                = optional(string)
    replay_protection  = optional(bool)
  }))
}

