#!/bin/sh -e

nix --extra-experimental-features 'nix-command flakes' build .#darwinConfigurations.aarch64-darwin.system $@

echo "Success"
