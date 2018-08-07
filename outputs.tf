output "Name of the bucket" {
	value = "${module.storage.bucketname}"
}
output "Instance IDs" {
	value = "${module.compute.server_id}"
}
output "Instance IPs" {
	value = "${module.compute.server_ip}"
}

