export LABEL="nf=nssf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
