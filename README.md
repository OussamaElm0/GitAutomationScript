# Git Commit Script

## Description

This script is a simple automation tool for committing and pushing changes to a Git repository. It prompts the user for the files to commit, the commit message, and the branch to push to, then performs the corresponding Git commands.

## Usage

1. **Prompt for Files to Commit**:
    - The script prompts the user to specify the files to commit.
    - If no input is provided, it defaults to committing all changes (`.`).

2. **Staging Files**:
    - The script adds the specified files to the Git staging area.
    - If the `git add` command fails, the script displays an error message and exits.

3. **Commit Message**:
    - The script prompts the user for a commit message.
    - It ensures the commit message is not empty by repeatedly prompting until a non-empty message is provided.

4. **Committing Changes**:
    - The script commits the staged changes with the provided commit message.
    - If the `git commit` command fails, the script displays an error message and exits.

5. **Branch to Push**:
    - The script prompts the user for the branch to push the changes to.
    - If no input is provided, it defaults to the `master` branch.

6. **Pushing Changes**:
    - The script pushes the committed changes to the specified branch on the remote repository.
    - If the `git push` command fails, the script displays an error message.

## Requirements

- Git must be installed and properly configured on your system.
- You must have the necessary permissions to push changes to the remote repository.

## Example

To use the script, simply execute it in your terminal:

```bash
./commit_script.sh
