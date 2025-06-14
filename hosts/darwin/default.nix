{ config, pkgs, ... }:

let
  user = "jkaloger";
in
{
  imports = [
    ../../modules/darwin
  ];

  environment.systemPackages = [
    pkgs.vim
  ];

  system = {
    stateVersion = 6;

    primaryUser = user;

    defaults = {
      dock = {
        autohide = true;
        orientation = "right";
      };
    };
  };
}
