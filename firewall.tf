//--------------------------------------------------------------//

resource "google_compute_firewall" "loadbalancer" {
	name    = "nginx-firewall"
	network = "default"
	 
	allow {
	protocol = "tcp"
	ports    = ["80-81","443","22","8080-8081"]
	}
	 
	allow {
	protocol = "icmp"
	}
	
}