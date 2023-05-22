import requests
import json
import random
import string
import time

def generate_random_message():
    # Randomly introduce errors in field names and schema
    error_probability = 0.1  # 10% chance of error
    if random.random() < error_probability:
        field_name = random.choice(["name", "nombre"])
        value_schema = '{"type": "record", "name": "sampleRecord", "doc":"Sample schema to help you get started.", "namespace":"com.mycorp.mynamespace","fields":[{"name":"' + field_name + '","type":"string"}]}'
    else:
        value_schema = '{"type": "record", "name": "sampleRecord", "doc":"Sample schema to help you get started.", "namespace":"com.mycorp.mynamespace","fields":[{"name":"name","type":"string"}]}'

    name = ''.join(random.choices(string.ascii_lowercase, k=10))
    message = {
        "value_schema": value_schema,
        "records": [{"value": {"name": name}}]
    }
    return json.dumps(message)

def send_message_to_confluent(message):
    headers = {
        "Content-Type": "application/vnd.kafka.avro.v2+json",
        "Accept": "application/vnd.kafka.v2+json"
    }
    url = "http://localhost:8082/topics/rest_proxy_example"
    response = requests.post(url, headers=headers, data=message)
    if response.status_code == 200:
        print("Message sent successfully!")
    else:
        print(f"Failed to send message. Response: {response.content}")

while True:
    random_message = generate_random_message()
    send_message_to_confluent(random_message)
    time.sleep(1)  # Adjust the delay between messages if needed