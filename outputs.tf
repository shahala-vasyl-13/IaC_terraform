output "ip_adresses" {
value =["loadbalancer: ${google_compute_instance.loadbalancer.network_interface.0.access_config.0.nat_ip}", 
"w01: ${google_compute_instance.w01.network_interface.0.access_config.0.nat_ip}",
"w02: ${google_compute_instance.w02.network_interface.0.access_config.0.nat_ip}"]
}

resource "local_file" "ips"{
 content = <<EOT
loadbalancer: ${google_compute_instance.loadbalancer.network_interface.0.access_config.0.nat_ip}
w01: ${google_compute_instance.w01.network_interface.0.access_config.0.nat_ip}
w02: ${google_compute_instance.w02.network_interface.0.access_config.0.nat_ip}
	EOT
 filename = "D:/SoftServe/Week_2_IaC/ipaddresses.txt"
}

