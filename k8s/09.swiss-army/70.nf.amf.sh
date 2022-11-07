export LABEL="nf=amf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
