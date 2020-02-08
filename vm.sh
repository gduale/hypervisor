#!/bin/bash 

virt-install --connect=qemu:///system \
  --name=openbsd66-1 \
  --cpu mode=host-passthrough --vcpus=2 \
  --ram=512 \
  --disk path=/home/gui/vm/openbsd66-1.qcow2,bus=virtio,cache=none,size=20,format=qcow2 \
  --network=bridge:br0,model=virtio \
  --noautoconsole --graphics vnc,listen=127.0.0.1,keymap=fr \
  --cdrom=/home/gui/iso/openbsd66.iso --check all=off

-----
qemu-img create vms/exherbo.dd 10G #raw
qemu-img create -f qcow2 vms/exherbo.dd 10G
