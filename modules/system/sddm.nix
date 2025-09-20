{ config, pkgs, ...}:

{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    extraPackages = with pkgs; [sddm-astronaut];
    theme = "sddm-astronaut-theme";
  };
}
