export LABEL="nf=ausf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
