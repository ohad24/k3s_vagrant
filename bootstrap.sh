#!/bin/bash

curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -s -

# ! --advertise-address 172.16.16.150

mkdir -p /home/vagrant/.kube/

cp /etc/rancher/k3s/k3s.yaml /home/vagrant/.kube/config

cp /etc/rancher/k3s/k3s.yaml /vagrant_data/config

chown vagrant:vagrant /home/vagrant/.kube/config