output "subnet_ips" {
	value = "${aws_subnet.tf_public_subnet.*.cidr_block}"
}