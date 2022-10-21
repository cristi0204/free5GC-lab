#helm install -n free5gc ue ./helm --values ./values.yaml
helm upgrade --install --debug --create-namespace --namespace free5gc --values=values.yaml ue helm/
