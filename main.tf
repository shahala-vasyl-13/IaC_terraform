//--------------------------------------------------------------//

 resource "google_compute_instance" "loadbalancer" {
 name         = "loadbalancer"
 machine_type = "f1-micro"
 zone         = "us-west1-a"

 boot_disk {
   initialize_params {
     image = "ubuntu-os-cloud/ubuntu-2004-lts"
   }
 }
 
 metadata_startup_script = "${file(var.nginx_script)}\n${file(var.balancer_script)}"		

 network_interface {
   network = "default"
    access_config {
     
   }
 }
 
 tags = ["http-server","https-server"]
 
 metadata = {
 ssh-keys = "vshahala:${file(var.ssh_key)}"
	}
}

//--------------------------------------------------------------//

resource "google_compute_instance" "w01" {
 name         = "w01"
 machine_type = "f1-micro"
 zone         = "us-west1-a"

 boot_disk {
   initialize_params {
     image = "ubuntu-os-cloud/ubuntu-2004-lts"
   }
 }
 
 metadata_startup_script = "${file(var.nginx_script)}\n${file(var.w01_script)}"	

 network_interface {
   network = "default"

   access_config {
     
   }
 }
 
 metadata = {
 ssh-keys = "vshahala:${file(var.ssh_key)}"
	}
}

//--------------------------------------------------------------//

resource "google_compute_instance" "w02" {
 name         = "w02"
 machine_type = "f1-micro"
 zone         = "us-west1-a"

 boot_disk {
   initialize_params {
     image = "ubuntu-os-cloud/ubuntu-2004-lts"
   }
 }
 
 metadata_startup_script = "${file(var.nginx_script)}\n${file(var.w02_script)}"

 network_interface {
   network = "default"

   access_config {
     
   }
 }
 
 metadata = {
 ssh-keys = "vshahala:${file(var.ssh_key)}"
	}
}



