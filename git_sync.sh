#!/bin/bash

# Prompt for commit message
echo "Enter commit message:"
read commit_message

if [ -z "$commit_message" ]; then
    echo "Commit message cannot be empty. Aborting."
    exit 1
fi

echo "Running git add ."
git add .

echo "Running git commit"
git commit -m "$commit_message"

echo "Running git push origin main"
git push origin main

echo "Running git pull upstream main"
git pull upstream main
