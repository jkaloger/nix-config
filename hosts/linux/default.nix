{ config, pkgs, ... }:

let
  user = "jack";
in
{
  imports = [
    ../../modules/linux
  ];
}
