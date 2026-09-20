{
  pkgs,
  lib,
  ...
}: {
  # The initrd has to contain any module that might be necessary for
  # supporting the most important parts of HW like drives.
  boot.initrd.kernelModules = [
    "3w-9xxx"
    "3w-xxxx"
    "ahci"
    "aic79xx"
    "aic7xxx"
    "arcmsr"
    "ata_piix"
    "cdrom"
    "ch"
    "dm_mod"
    "ext2"
    "ext4"
    "g_mass_storage"
    "hid"
    "hpsa"
    "i8042"
    "iso9660"
    "isofs"
    "libcomposite"
    "loop"
    "mc"
    "mmc_block"
    "mptspi"
    "nvme"
    "ohci-hcd"
    "ohci1394"
    "pata_marvell"
    "pcips2"
    "sata_inic162x"
    "sata_mv"
    "sata_nv"
    "sata_promise"
    "sata_qstor"
    "sata_sil"
    "sata_sil24"
    "sata_sis"
    "sata_svw"
    "sata_sx4"
    "sata_uli"
    "sata_via"
    "sata_vsc"
    "sbp2"
    "scsi_common"
    "scsi_mod"
    "sd_mod"
    "sdhci_pci"
    "sg"
    "squashfs"
    "sr_mod"
    "st"
    "tun"
    "uas"
    "ufshcd-core"
    "ufshcd-pci"
    "ufshcd-pltfrm"
    "uhci-hcd"
    "usb-storage"
    "usb_f_mass_storage"
    "virtio"
    "virtio_balloon"
    "virtio_blk"
    "virtio_console"
    "virtio_mmio"
    "virtio_net"
    "virtio_pci"
    "virtio_scsi"
    "xhci_hcd"
    "xhci_pci"
  ];
  fileSystems."/" = {
    device = "tmpfs";
    fsType = "tmpfs";
    neededForBoot = true;
  };
  fileSystems."/iso" = {
    device = "/dev/disk/by-label/micros";
    fsType = "iso9660";
    options = ["ro"];
    neededForBoot = true;
  };
  fileSystems."/nix/store" = {
    device = "/mnt-root/iso/root.squashfs";
    fsType = "squashfs";
    options = ["ro"];
    neededForBoot = true;
  };
}
