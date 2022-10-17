source "virtualbox-iso" "opnsense" {
  guest_os_type = "FreeBSD_64" # VBoxManage list ostypes
  iso_url = "./OPNsense-22.7-OpenSSL-dvd-amd64.iso"
  iso_checksum = "md5:e1ee1c975e429e7d79469b3ab2ffea7d"
  ssh_username = "packer"
  ssh_password = "packer"
  boot_command = [
    # Wait until the login screen
    "<wait120>",
    # Login with default credentials
    "root", "<enter>",
    "opnsense", "<enter>",

    # Setup SSH
    # TODO
    "<wait5>",

    # Shutdown
    "5", "<enter>", "y", "<enter>"
  ]
}

build {
  sources = [
    "sources.virtualbox-iso.opnsense"
  ]
}
