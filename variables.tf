variable "network_account_id" {
  description = "Account ID dari akun jaringan (pemilik CEN)."
  type        = string
}

variable "app_account_id" {
  description = "Account ID dari akun aplikasi (pemilik VPC)."
  type        = string
}

variable "cen_id" {
  description = "ID dari CEN Instance."
  type        = string
}

variable "vpc_id" {
  type        = string
  description = "The ID of VPC to attach to CEN (from VPC module output)"
}