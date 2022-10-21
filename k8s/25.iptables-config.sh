

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F

kubectl rollout restart deployment coredns -n kube-system

#kubectl wait --for=condition=Ready pod -l k8s-app=kube-dns -n kube-system
