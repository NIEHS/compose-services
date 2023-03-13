#!/bin/bash
# Script to create and re-create es indices and setup guppy
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/population_data_resource-array-config_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/population_data_resource_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/geospatial_data_resource_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/study_file_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/etl_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/file_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/file-array-config_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/study_file-array-config_0
sleep 2
docker exec esproxy-service curl -X DELETE http://localhost:9200/geospatial_data_resource-array-config_0
sleep 2
docker exec tube-service bash -c "python run_config.py && python run_etl.py"

#docker container stop guppy-service
#docker container start guppy-service
