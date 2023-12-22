{ config, pkgs, ... }:

{
  programs.hyprland.enable = true;

  fonts.packages = with pkgs; [
    font-awesome
    ubuntu_font_family
    nerdfonts
  ];

  environment.systemPackages = with pkgs; [
    hyprpaper
  ];
}
