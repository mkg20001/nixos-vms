# Global low level VM configuration
{ modulesPath, lib, pkgs, ... }:

{
  imports = [
    "${toString modulesPath}/virtualisation/qemu-vm.nix"
    ./local.nix
  ];

  users.users.root.password = "";

  services.mingetty.autologinUser = "root";

  services.openssh = {
    enable = true;
    permitRootLogin = "yes";
    extraConfig = ''
      PermitEmptyPasswords yes
    '';
  };

  # Forward ssh, the like
  virtualisation.qemu.networkingOptions = [
    "-net nic,netdev=user.0,model=virtio"
    "-netdev user,id=user.0\${QEMU_NET_OPTS:+,$QEMU_NET_OPTS},hostfwd=tcp::8088-:80,hostfwd=tcp::2222-:22"
  ];

  virtualisation.qemu.options = [
    "-soundhw hda"
    #"-vga qxl"
    "-vga virtio"
    "-display gtk,gl=on"
  ];

  system.stateVersion = lib.mkDefault "20.03";
}
