#!/bin/bash

source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/set_env.sh"

docker cp . hygiene:"/input/$ONTPUB_FAMILY"
