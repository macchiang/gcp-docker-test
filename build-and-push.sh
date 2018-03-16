#!/bin/bash
docker build . -t us.gcr.io/easyship-test/gcp-docker-test:v1
gcloud docker -- push us.gcr.io/easyship-test/gcp-docker-test:v1