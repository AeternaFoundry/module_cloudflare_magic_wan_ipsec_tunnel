resource "cloudflare_magic_wan_ipsec_tunnel" "magic_wan_ipsec_tunnels" {
  for_each = var.magic_wan_ipsec_tunnels

  account_id               = each.value.account_id
  cloudflare_endpoint      = each.value.cloudflare_endpoint
  interface_address        = each.value.interface_address
  name                     = each.value.name
  automatic_return_routing = each.value.automatic_return_routing
  bgp                      = each.value.bgp
  custom_remote_identities = each.value.custom_remote_identities
  customer_endpoint        = each.value.customer_endpoint
  description              = each.value.description
  health_check             = each.value.health_check
  interface_address6       = each.value.interface_address6
  psk                      = each.value.psk
  replay_protection        = each.value.replay_protection
}

