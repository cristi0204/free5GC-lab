set -e


figlet SWISS-ARMY
pushd 09.swiss-army
    kubectl apply -f 01.overlaytest.yaml 
popd
sleep 5
echo
echo


figlet LONGHORN
pushd 10.longhorn 
    bash 01.env_check.sh
    bash 02.add_longhorn_helm_repo.sh
    bash 03.update.sh 
popd
kubectl wait --for=condition=Ready pods --all -n longhorn-system
kubectl get all -n longhorn-system
echo
echo



figlet MULTUS CNI
pushd 20.multus-cni
    bash 01.multus-daemonset-thick.sh
popd

kubectl wait --for=condition=Ready pod -l app=multus -n kube-system
sleep 5
echo
echo

figlet IP TABELS
    bash 25.iptables-config.sh

    kubectl wait --for=condition=Ready pod -l k8s-app=kube-dns -n kube-system
    sleep 5
    echo
    echo

figlet FREE 5GC
pushd 30.free5gc
    bash 03.update.sh
    bash 81.get-network-attachment-definitions.sh
popd
#kubectl wait --for=condition=Ready pods --all -n free5gc
#sleep 5
echo
echo

figlet UERANSIM
pushd 35.ueransim
    bash 03.ue-update.sh
popd
kubectl wait --for=condition=Ready pods --all -n free5gc
sleep 5
echo
echo

kubectl get po -n free5gc -o wide
