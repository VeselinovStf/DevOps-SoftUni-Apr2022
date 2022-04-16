

terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

# # this is available only with the custom one (currently)
# provider "virtualbox" {
#   delay      = 60
#   mintimeout = 5
# }

resource "virtualbox_vm" "vm1" {
  name   = "debian-11"
  image  = "https://app.vagrantup.com/veselinovStf/boxes/debian-minimal/versions/0.0.1/providers/virtualbox.box"
  cpus   = 1
  memory = "512 mib"

  network_adapter {
    type           = "hostonly"
    device         = "IntelPro1000MTDesktop"
    host_interface = "vboxnet1"
  }
}

output "IPAddress" {
  value = element(virtualbox_vm.vm1.*.network_adapter.0.ipv4_address, 1)
}
