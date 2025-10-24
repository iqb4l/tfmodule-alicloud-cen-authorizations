# Grant VPCs to be attached to CEN
resource "alicloud_cen_instance_grant" "vpc_grants" {
  for_each                  = { for vpc in var.vpc_attachments : vpc.name => vpc }
  cen_id                    = var.cen_id
  child_instance_id         = each.value.vpc_id
  cen_owner_id              = var.network_account_id
  depends_on                = [var.cen_id]
}

