{ config, pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      efi.canTouchEfiVariables = true;
      timeout = 15;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
	theme = pkgs.catppuccin-grub;
	configurationLimit = 5;
	
        extraEntries = ''
	menuentry "CachyOS Linux" --class cachyos --class arch --class gnu-linux --class os {
	  set gfxplayload=keep
	  insmod gzio
	  insmod part_gpt
          insmod btrfs
          search --no-floppy --fs-uuid --set=root 829eee0a-8a3e-403a-863a-6448bcd175de
	  echo 'Loading Linux linux-cachyos ...'
          linux /@/boot/vmlinuz-linux-cachyos root=UUID=829eee0a-8a3e-403a-863a-6448bcd175de rw rootflags=subvol=@ nowatchdog nvme_load=YES zswap.enabled=0 splash loglevel=3
          echo 'Loading initial ramdisk ...'
	  initrd /@/boot/initramfs-linux-cachyos.img
      }
	'';
      };
    };
  };
  specialisation = {
    virtual-machine = {
      inheritParentConfig = true;
      configuration = {
        boot = {
          kernelParams = [ "kvm.enable_virt_at_load=0" ];
          loader.grub = {
            configurationName = "NixOS for VM";
            entryOptions = "--class nixos --class gnu-linux --unrestricted"; 
          };
        };
	system.nixos.label = "VM-Specialisation";
      };
    };
  };
}
