provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

resource "digitalocean_droplet" "mywebserver" {
  # Obtain your ssh_key id number via your account. See Document https://developers.digitalocean.com/documentation/v2/#list-all-keys
  ssh_keys           = [5515246]         # Key example
  image              = "${var.ubuntu-docker}"
  region             = "${var.do_ams3}"
  size               = "512mb"
  private_networking = true
  backups            = true
  ipv6               = true
  name               = "mywebserver-ams3"

  provisioner "remote-exec" {
    inline = [
        "apt-get update",
        "apt-get -y install python-pip",
        "pip install docker-compose"
        ]

    connection {
        type     = "ssh"
        private_key = "${file("~/.ssh/id_rsa")}"
        user     = "root"
        timeout  = "2m"
        }
    }

}
