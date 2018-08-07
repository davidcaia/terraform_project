provider "aws" {
	region = "${var.aws_region}"
}

terraform {
	backend "s3" {
		bucket = "ecs-terraform-study-case"
		region = "eu-west-1"
	}
}

module "storage" {
	source 		= "./storage"
	project_name 	= "${var.project_name}"
}

module "networking" {
	source 		= "./networking"
	vpc_cidr 	= "${var.vpc_cird}"
	public_cidrs	= "${var.public.cidrs}"
	accessip	= "${var.accessip}"
}

module "compute" {
	source		= "./compute"
	instance_count	= "{var.instance_count}"
	key_name	= "${var.key_name}"
	public_key_path	= "${var.public_key_path}"
	instance_type	= "${var.server_instance_type}"
	subnets		= "${module.networking.public_subnets}"
	security_group	= "${module.networking.public_sg}"
	subnet_ips	= "${module.networking.subnet_ips}"
}