# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  boot.initrd.availableKernelModules =
    [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/633baf42-9f72-4fe2-ad8f-54cce25dacd4";
    fsType = "xfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/c2e10020-714b-40f2-88c3-77dfd4614ec5";
    fsType = "ext3";
  };

  fileSystems."/home/kloenk" = {
    device = "6.0.2.2:/kloenk";
    fsType = "nfs4";
  };

  /* fileSystems."/home/kloenk/local" = {
       device = "/persist/data/local";
       fsType = "none";
       options = [ "bind" ];
     };
  */

  swapDevices =
    [{ device = "/dev/disk/by-uuid/2cba420b-2509-4d3f-a69c-52dac00f0e0a"; }];

  nix.maxJobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = lib.mkDefault "ondemand";
}