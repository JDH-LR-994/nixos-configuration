{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    tree 		    	# Util for tree folders and files
    kdePackages.qtmultimedia 	# Package dependency for bootloader theme
    sddm-astronaut	    	# Bootloader theme
    gparted 		    	# Package for create, move, delete partition on disk
    exfatprogs 		    	# Util for exfat filesystem
    pavucontrol 	    	# Package for sound control
    kdePackages.dolphin     	# Filemanager
    home-manager		# Home-manager
  ];
}
