{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    neovim		# Editor
    libreoffice-fresh	# Office package
    firefox		# Browser
    btop		# App for see information about system
    neohtop		# Modern btop
    telegram-desktop	# Messenger
  ];
}
