export LABEL="nf=udm"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
