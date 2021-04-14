variable "ssh_key" {
	type = string
	default = "D:/SoftServe/IaC_terraform/sshkey.pub"
}

variable "nginx_script" {
	type=string
	default="D:/SoftServe/IaC_terraform/scripts/nginx.sh"
}

variable "balancer_script" {
	type=string
	default="D:/SoftServe/IaC_terraform/scripts/loadbalancer.sh"
}

variable "w01_script" {
	type=string
	default="D:/SoftServe/IaC_terraform/scripts/w01.sh"
}

variable "w02_script" {
	type=string
	default="D:/SoftServe/IaC_terraform/scripts/w02.sh"
}

