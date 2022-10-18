#helm install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace

helm upgrade --install longhorn longhorn/longhorn --debug --namespace longhorn-system --values=values.yaml --create-namespace