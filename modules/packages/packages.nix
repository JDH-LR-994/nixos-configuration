{config, pkgs, ...}:

{
  imports = [
    ./base-user-program.nix
    ./hyprland-packages.nix
    ./system-packages.nix
    ./utils.nix
  ];
}
