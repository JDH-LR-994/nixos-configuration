{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget	# util for download file from internet
    curl	# Modern wget
    git		# Version control system
    fastfetch	# info about system
    cpufetch	# info about CPU
    freerdp	# work with RDP
  ];
}
