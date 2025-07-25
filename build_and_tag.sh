#!/bin/bash

set -e

# Define color and style variables
BOLD="\033[1m"
GREEN="\033[32m"
CYAN="\033[36m"
RESET="\033[0m"

# Pull script for required Docker images for 4g-volte-deploy.yaml, srsue_zmq.yaml, and srsenb.yaml
# Pulls all images from remote registries as per the README instructions

echo -e "${BOLD}${CYAN}==== Pulling public images ====${RESET}"

echo -e "${BOLD}${GREEN}== Pulling mongo:6.0 ==${RESET}"
docker pull mongo:6.0


echo -e "\n${BOLD}${CYAN}==== Pulling custom images from ghcr.io/herlesupreeth ====${RESET}"

echo -e "${BOLD}${GREEN}== Pulling docker_grafana ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_grafana:master
docker tag ghcr.io/herlesupreeth/docker_grafana:master docker_grafana

echo -e "${BOLD}${GREEN}== Pulling docker_open5gs ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_open5gs:master
docker tag ghcr.io/herlesupreeth/docker_open5gs:master docker_open5gs

echo -e "${BOLD}${GREEN}== Pulling docker_dns ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_dns:master

docker tag ghcr.io/herlesupreeth/docker_dns:master docker_dns

echo -e "${BOLD}${GREEN}== Pulling docker_rtpengine ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_rtpengine:master

docker tag ghcr.io/herlesupreeth/docker_rtpengine:master docker_rtpengine

echo -e "${BOLD}${GREEN}== Pulling docker_mysql ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_mysql:master

docker tag ghcr.io/herlesupreeth/docker_mysql:master docker_mysql

echo -e "${BOLD}${GREEN}== Pulling docker_pyhss ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_pyhss:master

docker tag ghcr.io/herlesupreeth/docker_pyhss:master docker_pyhss

echo -e "${BOLD}${GREEN}== Pulling docker_kamailio ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_kamailio:master

docker tag ghcr.io/herlesupreeth/docker_kamailio:master docker_kamailio

echo -e "${BOLD}${GREEN}== Pulling docker_osmomsc ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_osmomsc:master

docker tag ghcr.io/herlesupreeth/docker_osmomsc:master docker_osmomsc

echo -e "${BOLD}${GREEN}== Pulling docker_osmohlr ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_osmohlr:master

docker tag ghcr.io/herlesupreeth/docker_osmohlr:master docker_osmohlr

echo -e "${BOLD}${GREEN}== Pulling docker_metrics ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_metrics:master

docker tag ghcr.io/herlesupreeth/docker_metrics:master docker_metrics

echo -e "${BOLD}${GREEN}== Pulling docker_srslte ==${RESET}"
docker pull ghcr.io/herlesupreeth/docker_srslte:master

docker tag ghcr.io/herlesupreeth/docker_srslte:master docker_srslte

echo -e "\n${BOLD}${CYAN}All required images have been pulled and tagged successfully.${RESET}\n" 