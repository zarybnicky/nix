# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix> ];

  boot.initrd.availableKernelModules =
    [ "uhci_hcd" "ehci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/a99eac71-8f0a-4993-b088-1c1c82ea7ebf";
    fsType = "xfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/1bdf6bef-6ec5-4f01-aac0-3f63aaf887f8";
    fsType = "ext2";
  };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/9e8116c6-1265-4481-8765-ad794d05f657"; }];

  nix.maxJobs = lib.mkDefault 4;
}
