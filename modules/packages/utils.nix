{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget	# util for download file from internet
    curl	# modern wget
    git		# version control system
    fastfetch	# info about system
    cpufetch	# info about CPU
    freerdp	# work with RDP
    eza		# modern ls
    bat		# modern cat
    fd 		# modern find
    ripgrep	# modern grep
  ];
}
