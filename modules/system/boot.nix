{ config, pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        extraEntries = ''
	menuentry "CachyOS" {
	  insmod part_gpt
	  insmod btrfs
	  search --no-floppy --fs-uuid --set=root 829eee0a-8a3e-403a-863a-6448bcd175de
	  confidfile /boot/grub/grub.cfg
	} 
	''
      };
    };
  };
}
