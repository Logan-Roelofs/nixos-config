{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nmap
    # Add more security tools here...
  ];
}
