# Global Local Additions for all VMs

{ lib, pkgs, ... }:

{
  # Have an untracked additions file.
  imports = (
    if builtins.pathExists(./local.untracked.nix) then [ ./local.untracked.nix ]
    else []
  );

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "dvorak";
    defaultLocale = "en_US.UTF-8";
  };

  services.xserver = {
    layout = "us";
    xkbVariant = "dvorak";
  };

  users.users.worldofpeace = {
    createHome = true;
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "lightdm" ];
    uid = 1000;
    password = "";
  };
}
