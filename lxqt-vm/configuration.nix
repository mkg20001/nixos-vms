{ lib, config, pkgs, ... }:

{

  imports = [
    ../config
  ];

  services.xserver.enable = true;

  services.xserver.desktopManager.lxqt.enable = true;
}
