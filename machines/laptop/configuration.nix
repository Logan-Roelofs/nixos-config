{ config, pkgs, ... }:

{
  imports = [
    ../../modules/system/time.nix
    ../../modules/system/user.nix
    ../../modules/system/audio.nix
    ../../modules/system/networking.nix
    ../../modules/system/bootloader/grub.nix
    ../../modules/apps/common.nix
    ../../modules/apps/security-tools.nix
    ../../modules/desktop/bar/waybar.nix
    ../../modules/desktop/window-manager/hyprland.nix
    ../../modules/desktop/wofi.nix
    ../../modules/desktop/swaylock.nix
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.autoUpgrade.enable  = true;
  system.autoUpgrade.allowReboot  = true;

  documentation.nixos.enable = false;
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
