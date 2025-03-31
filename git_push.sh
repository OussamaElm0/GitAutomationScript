#!/bin/bash

read -p "Files to commit [default: .]: " FILES_TO_COMMIT

# If no input is given, default to all files (.)
if [ -z "$FILES_TO_COMMIT" ]; then
    FILES_TO_COMMIT="."
fi

# Prompt for a commit message
read -p "Commit message: " COMMIT_MESSAGE

# Ensure the commit message is not empty
while [ -z "$COMMIT_MESSAGE" ]; do
    read -p "Please provide a non-empty commit message: " COMMIT_MESSAGE
done

read -p "Branch to push to [default: master]: " BRANCH

# Default to "master" if no branch is specified
if [ -z "$BRANCH" ]; then
    BRANCH="master"
fi

# Confirm before proceeding
read -p "Confirm commit and push? (y/n): " CONFIRMATION

if [ "$CONFIRMATION" = "y" ]; then
    echo "Starting the process..."

    git add $FILES_TO_COMMIT
    echo "Files added to the staging area."

    git commit -m "$COMMIT_MESSAGE"
    echo "Changes committed with message: '$COMMIT_MESSAGE'."

    git push origin $BRANCH
    echo "Files successfully pushed to branch '$BRANCH'."
else
    echo "Operation canceled."
fi