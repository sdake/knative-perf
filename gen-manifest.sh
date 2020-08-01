./istioctl manifest generate -f istio-minimal-operator.yaml \
--set values.gateways.istio-egressgateway.enabled=false \
--set values.gateways.istio-ingressgateway.sds.enabled=true \
--set values.gateways.istio-ingressgateway.autoscaleMin=3 \
--set values.gateways.istio-ingressgateway.autoscaleMax=6 \
--set values.pilot.autoscaleMin=3 \
--set values.pilot.autoscaleMax=6 > istio.yaml
