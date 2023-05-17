#!/bin/bash
set -e

export $(xargs < ../../.env)

docker build --build-arg JH_VERSION="$JH_VERSION" \
             -t xnat/monai-notebook:1.0.0-SNAPSHOT \
             -t xnat/monai-notebook:latest \
             .
