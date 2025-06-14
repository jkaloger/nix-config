#!/bin/sh -e

nix --extra-experimental-features 'nix-command flakes' build .#darwinConfigurations.aarch64-darwin.system $@
sudo ./result/sw/bin/darwin-rebuild switch --flake .#aarch64-darwin $@
