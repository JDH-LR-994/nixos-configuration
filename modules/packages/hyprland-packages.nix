{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rofi	# Application menu
    waybar	# Status bar
    hyprpaper	# Util for wallpaper
    kitty	# Terminal emulator
  ];
}
