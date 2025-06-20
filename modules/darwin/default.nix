{
  config,
  pkgs,
  lib,
  home-manager,
  ...
}:

let
  user = "jkaloger";
in
{
  users.users.${user} = {
    name = "${user}";
    home = "/Users/${user}";
    isHidden = false;
    shell = pkgs.zsh;
  };
  homebrew = {
    enable = true;
    casks = pkgs.callPackage ./casks.nix { };
  };

  home-manager = {
    useGlobalPkgs = true;
    users.${user} =
      {
        pkgs,
        config,
        lib,
        ...
      }:
      {
        home = {
          stateVersion = "25.05";
          packages = pkgs.callPackage ./packages.nix { };
          file = {
            ".config/aerospace" = {
              source = ./config/aerospace;
              recursive = true;
            };
          };
        };
        programs = {
        } // import ../shared/home.nix { inherit config pkgs lib; };
      };
  };

  services = {
    jankyborders = {
      enable = true;
      blur_radius = 5.0;
      active_color = "0xeed3d5db";
      inactive_color = "0x00494d64";
      width = 10.0;
    };
  };
}
