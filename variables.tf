variable "aws" {
  type    = map(string)
  default = {}
}

variable "eks" {
  type    = map(string)
  default = {}
}

variable "env" {
}

variable "db_identifier" {
}

variable "db_engine" {
  default = "postgres"
}

variable "db_engine_version" {
  default = "11.2"
}

variable "db_major_engine_version" {
  default = "11.2"
}

variable "db_instance_class" {
  default = "db.t3.small"
}

variable "db_allocated_storage" {
  default = 20
}

variable "db_storage_encrypted" {
  default = true
}

variable "db_storage_type" {
  default = "gp2"
}

variable "db_name" {
  default = ""
}

variable "db_username" {
  default = "ontex"
}

variable "db_password" {
  default = ""
}

variable "db_port" {
  default = 5432
}

variable "db_maintenance_window" {
  default = "Mon:00:00-Mon:03:00"
}

variable "db_backup_window" {
  default = "03:00-06:00"
}

variable "db_backup_retention_period" {
  default = 7
}

variable "db_tags" {
  type = map(string)
}

variable "db_enable_cloudwatch_logs_exports" {
  type    = list(string)
  default = ["postgresql", "upgrade"]
}

variable "db_family" {
  default = "postgres11"
}

variable "db_deletion_protection" {
  default = false
}

variable "db_parameters" {
  type = any

  default = [
    {
      name  = "character_set_client"
      value = "utf8"
    },
    {
      name  = "character_set_server"
      value = "utf8"
    },
  ]
}

variable "db_multi_az" {
  default = false
}

variable "inject_secret_into_ns" {
  type    = list
  default = []
}

variable "db_remote_security_group_id" {
  default = ""
}
