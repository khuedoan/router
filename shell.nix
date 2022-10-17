# https://status.nixos.org
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ec96702d7dbc5d3af40ef1c4d28040ec4a0f11e8.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ansible
    ansible-lint
    aria
    bmake
    bzip2
    git
    openssh
    packer
    pre-commit
    shellcheck
  ];
}
