export LABEL="nf=webui"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
