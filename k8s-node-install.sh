apt-get update
apt-get install docker.io -y
apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl

# Below link we can get it from master after kubeadm init command
# kubeadm join 172.31.85.104:6443 --token 3tnjyo.wr9npd5d4ad49khe \
#   --discovery-token-ca-cert-hash sha256:7219f073dfbe57e278f47dc460d9870bbb2643b53b2defd2fff7eb6d912a1be2

# Go to k8s Master type below command you will get one node is added
# Kubectl get nodes


#execute a script
#chmod +x k8s node install.sh
#./k8s node install.sh