{ config, pkgs, ... }:

{
  environment.systemPackages =
    [ pkgs.vim
    ];

  system.stateVersion = 6;
}
