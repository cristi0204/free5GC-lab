export LABEL="nf=smf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
