#!/bin/bash 

CM_ADDRESS="https://128.107.17.137:7183"
CM_LOGIN="admin:admin"
CLUSTER_NAME="elisska"
API_VERSION=`curl -k -s -u ${CM_LOGIN} ${CM_ADDRESS}/api/version`
SERVICE=hive
ACTION=restart

ACTION_COMMAND="curl -k -s -u ${CM_LOGIN} -X POST -H \"Content-Type:application/json\" ${CM_ADDRESS}/api/${API_VERSION}/clusters/${CLUSTER_NAME}/services/${SERVICE}/commands/${ACTION}"

STATUS_COMMAND="curl -k -s -u ${CM_LOGIN} ${CM_ADDRESS}/api/${API_VERSION}/clusters/${CLUSTER_NAME}/services/${SERVICE}"

#echo "# ${ACTION_COMMAND}"
$ACTION_COMMAND

sleep 100
SERVICE_STATE=`$STATUS_COMMAND | grep serviceState`
echo "${SERVICE} service state after ${ACTION}: ${SERVICE_STATE}"
