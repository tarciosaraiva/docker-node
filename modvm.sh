#!/bin/bash

for i in {49000..49900}; do
  VBoxManage modifyvm "default" --natpf1 "tcp-port$i,tcp,,$i,,$i";
  VBoxManage modifyvm "default" --natpf1 "udp-port$i,udp,,$i,,$i";
done
