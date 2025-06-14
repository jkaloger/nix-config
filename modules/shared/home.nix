{ config, pkgs, lib, ... }:

{
	direnv = {
		enableZshIntegration = true;
		enable = true;
		nix-direnv.enable = true;
	};
}
