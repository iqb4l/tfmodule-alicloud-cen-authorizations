# Grant VPCs to be attached to CEN
resource "alicloud_cen_instance_grant" "this" {
  cen_id                    = var.cen_id
  child_instance_id         = var.vpc_id
  cen_owner_id              = var.network_account_id
  depends_on                = [var.cen_id]
}

