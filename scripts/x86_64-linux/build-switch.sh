#!/bin/sh -e
nix --extra-experimental-features 'nix-command flakes' build .#linuxConfigurations.x86_64-linux.activationPackage "$@"
./result/activate
