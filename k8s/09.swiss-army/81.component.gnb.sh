export LABEL="component=gnb"
export NAMESPACE=free5gc
stern -n $NAMESPACE -l $LABEL
