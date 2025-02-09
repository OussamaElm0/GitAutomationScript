#!/bin/bash

read -p "Files to commit[.]: " FILES_TO_COMMIT

if [ -z $FILES_TO_COMMIT ]; then
    FILES_TO_COMMIT="."
fi

# Add files to the staging area
git add $FILES_TO_COMMIT
if [ $? -ne 0 ]; then
    echo "Error adding files to the staging area."
    exit 1
fi

read -p "Commit message: " COMMIT_MESSAGE

while [ -z "$COMMIT_MESSAGE" ]; do
    read -p "Please provide a non empty message: " COMMIT_MESSAGE
done

# Commit with the provided message
git commit -m "$COMMIT_MESSAGE"
if [ $? -ne 0 ]; then
    echo "Error commiting changes."
    exit 1
fi

read -p "Branch [master]: " BRANCH

# Check if user input is empty
if [ -z "$BRANCH" ]; then
    BRANCH="master"
fi

# Push to specified branch
git push origin $BRANCH
if [ $? -ne 0 ]; then
    echo "Error pushing to branch $BRANCH."
fi