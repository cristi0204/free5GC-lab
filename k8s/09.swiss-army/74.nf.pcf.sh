export LABEL="nf=pcf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
