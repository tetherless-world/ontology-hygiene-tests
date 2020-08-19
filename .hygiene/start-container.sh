#!/bin/bash

source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/set_env.sh"

cd "$hygiene_dir"
docker-compose pull hygiene

# Run the hygiene script in detached mode
docker-compose up -d hygiene
