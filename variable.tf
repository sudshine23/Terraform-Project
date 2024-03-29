#vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app__subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app__subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data__subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data__subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

# SG variables
variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "the ip address that can ssh inot the ec2"
  type = string
  
}

# rds variables

variable "database_snapshot_identifier" {
  default = "arn:aws:rds:ap-south-1:295397827318:snapshot:fleetcart-final-snapshot"
  description = "databse snapshot ARN"
  type = string
  
}

variable "database_instance_class" {
  default = "db.t2.micro"
  description = "database instance type"
  type = string
  
}

variable "database_instance_identifier" {
  default = "dev-rds-db"
  description = "database instance identifier"
  type = string
  
}

variable "multi_az_deployement" {
  default = false
  description = "crete a standby DB instance"
  type = bool
  
}

#ALB vriables
variable "ssl_certificate_arn" {
  default = "arn:aws:acm:ap-south-1:295397827318:certificate/241a313e-05f8-4b80-a96a-776a6edda61c"
  description = "ssl certificate arn"
  type = string
  
}


#SNS topic vriables
variable "operator-email" {
  default = "sudarshan513@gmail.com"
  description = "valid email address"
  type = string
  
}

#Auto scaling group vriables
variable "launch_template_name" {
  default = "dev-launch-template"
  description = "name of the launch template"
  type = string
  
}


#AMI vriables
variable "ec2_image_id" {
  default = "ami-03380b9fcc3d4867c"
  description = "AMI ID"
  type = string
  
}

#Instance type vriables
variable "ec2_instance_type" {
  default = "t2.micro"
  description = "ec2 instance type"
  type = string
  
}

#Keypair vriables
variable "ec2_keypair_name" {
  default = "MyEc2Key"
  description = "My key pair name"
  type = string
  
}

#Route 53 vriables
variable "domain_name" {
  default = "betemaujkardi.com"
  description = "domain name"
  type = string
  
}

variable "record_name" {
  default = "www"
  description = "sub-domain name"
  type = string
  
}