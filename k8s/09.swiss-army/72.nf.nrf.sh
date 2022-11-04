export LABEL="nf=nrf"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
