resource "vault_auth_backend" "approle" {
  type = "approle"
}

module "approles" {
  source                 = "./auth_approle"
  approle_mount_accessor = vault_auth_backend.approle.accessor
  approle_mount_path     = vault_auth_backend.approle.path
  approles               = var.approles
}

resource "vault_identity_group" "approle" {
  #for_each  = { for k, approle in distinct(flatten(try(local.approles[*].groups, []))) : approle => approle }
  for_each          = { for group in var.groups : group.name => group }
  member_entity_ids = [for entry in var.approles : module.approles.approle_identities[entry.role_name] if contains(entry.groups == null ? [] : entry.groups, each.value.name)]
  name              = each.value.name
  type              = "internal"
  policies          = each.value.policies
}
