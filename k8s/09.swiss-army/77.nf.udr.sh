export LABEL="nf=udr"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
