{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    kitty
    firefox  
    tldr
    neovim
    git
    neofetch
    vscode
  ];
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
