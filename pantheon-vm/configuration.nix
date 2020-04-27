# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ lib, config, pkgs, ... }:

{

  imports = [
    ../config
  ];

  #environment.systemPackages = with pkgs; [ dfeet htop gnome3.dconf-editor pantheon.appcenter ];
  environment.systemPackages = with pkgs; [ firefox htop ];

  services.xserver.enable = true;

  services.xserver.desktopManager.pantheon.enable = true;
  services.xserver.desktopManager.pantheon.debug = true;

  #services.xserver.desktopManager.gnome3.enable = true;
  #services.xserver.displayManager.lightdm.greeters.pantheon.enable = true;

  #services.xserver.displayManager.gdm.enable = true;

  environment.variables.G_MESSAGES_DEBUG = "all";

  #boot.plymouth = {
  #  enable = true;
  #  theme = "bgrt";
  #};


}
