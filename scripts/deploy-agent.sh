#!/bin/bash

set -e

AGENT_NAME=$1
NAMESPACE=$2
HELM_CHART_PATH=$3

CONFIG_PATH=config/${AGENT_NAME}/agent.properties

echo "Creating namespace if not exists..."
kubectl create namespace ${NAMESPACE} --dry-run=client -o yaml | kubectl apply -f -

echo "Preparing ConfigMap for agent..."
kubectl create configmap ${AGENT_NAME}-config \
  --from-file=${CONFIG_PATH} \
  -n ${NAMESPACE} \
  --dry-run=client -o yaml | kubectl apply -f -

echo "Deploying Helm chart..."
helm upgrade --install ${AGENT_NAME} ${HELM_CHART_PATH} \
  --namespace ${NAMESPACE} \
  --set agent.name=${AGENT_NAME}

echo "Verifying deployment..."
kubectl get pods -n ${NAMESPACE}

echo "Deployment completed successfully."
