#Creamos topico en el CCLoud UI
#mandamos primer mensaje
# https://www.confluent.io/es-es/blog/a-comprehensive-rest-proxy-for-kafka/
# https://github.com/confluentinc/kafka-rest
#https://docs.confluent.io/platform/current/kafka-rest/api.html#rest-api-usage-examples


curl http://localhost:8082/v3/clusters
curl http://localhost:8082/topics
curl http://localhost:8082/topics/rest_proxy_example | jq

curl -X GET -H "Accept: application/vnd.kafka.v2+json" "http://localhost:8082/consumers/"



# SAMPLE MESSAGE

curl -i -X POST -H "Content-Type: application/vnd.kafka.avro.v2+json" -H "Accept: application/vnd.kafka.v2+json"  --url "http://localhost:8082/topics/rest_proxy_example" --data '{"value_schema": "{\"type\": \"record\", \"name\": \"sampleRecord\", \"doc\":\"Sample schema to help you get started.\", \"namespace\":\"com.mycorp.mynamespace\",\"fields\":[{\"name\":\"age\",\"type\":\"int\"},{\"name\":\"name\",\"type\":\"string\"}]}","records":[{"value":{"name":"angelica","age":29}}]}' 


