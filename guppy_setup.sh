#!/bin/bash
# Script to create and re-create es indices and setup guppy
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/cebs_dataset_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/cebs_dataset-array-config_0
sleep 2
docker exec tube-service bash -c "python run_config.py && python run_etl.py"

docker container stop guppy-service
docker container start guppy-service
