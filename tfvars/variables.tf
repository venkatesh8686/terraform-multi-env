variable "instance" {
  type        = map
  
}

variable "domain_name" {
  default = "vvsmgold.online"
}

variable "hosted_id" {
  default = "Z05933623RG0R1RYV0WW2"
}

variable "comman_tags" {
    default = {
        Project = "expense"
        Terraform = "True"
    }
}

variable "tags" {
  type = map
}
variable "environment" {
    
}