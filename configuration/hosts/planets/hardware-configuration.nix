# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/profiles/qemu-guest.nix> ];

  boot.initrd.availableKernelModules =
    [ "ahci" "xhci_pci" "virtio_pci" "sr_mod" "virtio_blk" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/bd50e9e0-0b7d-4285-988e-5d1afc1b6074";
    fsType = "xfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/37d713c6-9773-4793-b8b2-70721745b82b";
    fsType = "ext2";
  };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/823eed7e-6c6d-484f-adc8-0f4851b21181"; }];

  nix.maxJobs = lib.mkDefault 8;
}
