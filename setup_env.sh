#!/bin/bash
export REGION=us-central1 
export PROJECT_ID=$(gcloud config get project) 
export INITIAL_USER=jake.holmquist@valtech.com
export DOMAIN_NAME=creative-studio.gcp-demos.valtech.com

cat > terraform.tfvars << EOF
project_id = "$PROJECT_ID"
initial_user = "$INITIAL_USER"
domain = "$DOMAIN_NAME"
EOF