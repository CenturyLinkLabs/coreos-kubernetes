#! /bin/sh

sudo mkdir -p /opt/bin
sudo cp ./binaries/* /opt/bin/

sudo cp ./units/* /etc/systemd/system/

sudo systemctl start apiserver
sudo systemctl start scheduler
sudo systemctl start controller-manager
sudo systemctl start kubelet
sudo systemctl start proxy

systemctl | grep Kube
