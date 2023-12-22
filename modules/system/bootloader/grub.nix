{ config, pkgs, ... }:

{
  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.efiInstallAsRemovable = false; # for some motherboards (MSI), you need to set this to true.
  boot.loader.efi.efiSysMountPoint = "/boot"; # if applicable
  # if /boot is on a FAT32 partition
  # boot.loader.grub.fsIdentifier = "uuid";
  # only for non-UEFI systems or legacy boot
  boot.loader.grub.device = "nodev";
}
