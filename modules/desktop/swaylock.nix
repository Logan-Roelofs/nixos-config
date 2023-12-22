{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    swaylock-effects
    # other packages...
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
