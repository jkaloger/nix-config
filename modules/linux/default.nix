{ config, pkgs, ... }:

{
  home.username = "jack";
  home.homeDirectory = "/home/jack";
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
  home.packages = with pkgs;
    let
      shared-packages = import ../shared/packages.nix { inherit pkgs; };
    in
    shared-packages
    ++ [
    ];
}
