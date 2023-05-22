#!/bin/sh

#CLOUD API KEYS

export CLOUD_KEY="****"
export CLOUD_SECRET="****"
export ORG_ID="****"
export ENVID="***"


export CLUSTERID="lkc-****"
##only needed if creating a new cluster
#export CLUSTERTYPE="basic"
#export CLUSTERNAME="self-managed-demo"

#Either us, eu
export GEO="eu"
export REGION="eu-central-1"
export CONFLUENT_REST_URL="https://*****.aws.confluent.cloud:443"
export CLUSTERAPIKEY="***"
export CLUSTERAPISECRET="****"

export CLOUDPROVIDER="aws"

export SR_API_KEY="****"
export SR_API_SECRET="****"
export BOOTSTRAP_SERVERS="****.eu-central-1.aws.confluent.cloud:9092"
export SCHEMA_REGISTRY_URL="https://*****.eu-central-1.aws.confluent.cloud"


export SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY password=$CLUSTERAPISECRET;"
export SASL_JAAS_CONFIG_PROPERTY_FORMAT="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY password=$CLUSTERAPISECRET;"
export REPLICATOR_SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY' password=$CLUSTERAPISECRET;"
export BASIC_AUTH_CREDENTIALS_SOURCE="USER_INFO"
export SCHEMA_REGISTRY_BASIC_AUTH_USER_INFO=$SR_API_KEY:$SR_API_SECRET
