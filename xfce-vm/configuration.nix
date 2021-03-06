# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ lib, config, pkgs, ... }:

{

  imports = [
    ../config
  ];

  services.xserver.enable = true;

  services.xserver.desktopManager.xfce.enable = true;

  hardware.pulseaudio.enable = true;
}
