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

variable "vpc_attachments" {
  description = "Daftar konfigurasi attachment VPC yang perlu diberikan grant."
  type = list(object({
    name         = string
    vpc_id       = string
    vpc_owner_id = string
    cen_owner_id = string
  }))
}

variable "env" {
  description = "Environment (misal: prod, nonprod)."
  type        = string
}