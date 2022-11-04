export LABEL="nf=upf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
