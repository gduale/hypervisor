# Open source hypervisor on Linux

# Prerequisites

## Dependencies
 - sudo apt install qemu-kvm bridge-utils qemu-utils libvirt-daemon-system libvirt-clients virtinst netcat-openbsd
 - sudo apt install virt-manager #GUI
 - sudo systemctl restart libvirtd
 - sudo cp qemu-ifup /etc/

## Setup bridge 
 - sudo brctl addbr br0

In the file /etc/network/interfaces
```
auto br0
  iface br0 inet dhcp
  bridge_ports enp0s31f6
```

## Manage VMs
 - virsh list --all
 - virsh start <vm-name>
 - virsh shutdown <vm-name>
 - virsh destroy <vm-name>
 - virsh edit <vm-name>

## Graphical connection on a VM
 - xtightvncviewer localhost

## Notes
 - https://ahelpme.com/linux/howto-do-qemu-full-virtualization-with-bridged-networking/
 - https://wiki.qemu.org/Documentation/Networking
