# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  boot.initrd.availableKernelModules =
    [ "ata_piix" "uhci_hcd" "virtio_pci" "sr_mod" "virtio_blk" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/99931bed-ed51-4c08-a2eb-ba3651fc3e6a";
    fsType = "xfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/031B-117D";
    fsType = "vfat";
  };

  fileSystems."/persist/data" = {
    device = "/dev/disk/by-uuid/1cf60e4c-a786-4564-a8c0-3ad30c3c2efc";
    fsType = "xfs";
  };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/37fac272-080e-4e51-b404-f9be0a0dcd89"; }];

  nix.maxJobs = lib.mkDefault 8;
}
