#!/usr/bin/env bash

eksElbHostName=$(./kubectl get svc av-capstone-application -o jsonpath='{.status.loadBalancer.ingress[*].hostname}')
if [ -z "${eksElbHostName}" ]; then
    echo "Cannot determine service host name. Check kubeconfig!"
    exit -1
fi

statusApiUrl="http://${eksElbHostName}:9080"
echo "Service Status API URL: ${statusApiUrl}"

for i in {1..20}
do
    echo "Smoke test #${i}"
    if curl -s "${statusApiUrl}" | grep "Hello"; then
        echo "Smoke test OK"
        exit 0
    else
        if [ ${i} -lt 20 ]; then
            echo "Waiting 15 seconds for service to become available..."
            sleep 15
        fi
    fi
done

echo "Smoke test FAILED"
exit -2