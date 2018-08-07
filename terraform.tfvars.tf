aws_region 	= "eu-west-1"
project_name	= "ecs-study-case-terraform"
vpc_cird	= "10.111.0.0/16"
public-cidrs	= [
	"10.111.1.0/24",
	"10.111.2.0/24"
	]
accessip = "0.0.0.0/0"
key_name = "tf_key"
public_key_path = "/home/ec2-user/.ssh/id_rsa.pub"
server_instance_type = "m5.24xlarge"
instance_count = 3