cat <<EOF | kubectl create -f -
apiVersion: "k8s.cni.cncf.io/v1"
kind: NetworkAttachmentDefinition
metadata:
  name: macvlan-conf
spec:
  config: '{
      "cniVersion": "0.3.0",
      "type": "macvlan",
      "master": "eth0",
      "mode": "bridge",
      "ipam": {
        "type": "host-local",
        "subnet": "172.17.9.0/24",
        "rangeStart": "172.17.9.240",
        "rangeEnd": "172.17.9.250",
        "routes": [
          { "dst": "0.0.0.0/0" }
        ],
        "gateway": "172.17.9.1"
      }
    }'
EOF
