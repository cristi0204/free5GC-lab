#VALUES=values_mda.yaml
export VALUES=values_5g.yaml


helm upgrade --install nginx nginx-stable/nginx-ingress --debug --namespace ingress-nginx --values=$VALUES --create-namespace
