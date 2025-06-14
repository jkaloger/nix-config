{ config, pkgs, lib, home-manager, ... }:

{
	homebrew = {
		enable = true;
		casks = pkgs.callPackage ./casks.nix { };
	}
}
