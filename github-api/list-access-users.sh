#!/bin/bash

######################
# Author/Owner: Janvi Siddhpura
# Date: 15 June, 2025
# Version: v1
# About: This script will list all the collaborators of the repository, who has a access!
######################

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# User/Organization and repository details
REPO_OWNER=$1
REPO_NAME=$2

# Helper function to check for the valid arguments
function helper {
    expected_cmd_args=2
    if [ $# -ne $expected_cmd_args ]; then
        echo "Please execute the script with Repository's owner name and name"        
        exit 1
    fi
}

# Function to make a GET request
function github_get_api {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"
    # Send a GET request to the GitHub API with user params
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
    # Fetch the list of collaborators on the repository
    collaborators="$(github_get_api "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"    
    # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

helper "$@"
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}.."
list_users_with_read_access