# 🏁 Shell Scripting Examples

- #### This repository contains examples and projects related to shell scripting.
- #### Each folder name contains topic-wise examples.

- #### Let's start! 👋

### 1. github-api

- This folder contains a Bash script that lists all collaborators with read (pull) access to a specified GitHub repository, utilizing the GitHub REST API.
  
- The script requires a GitHub username and a personal access token for authentication, and is designed for both public and private repositories.

- It has been tested and runs successfully on Linux environments, including AWS EC2 instances.

#### Features:

- Lists users with read access to any given repository.

- Silent operation with clear, formatted output.

- Production-ready and tested on Ubuntu 22.04 LTS.

```sh
./list_collaborators.sh <repo_owner> <repo_name>
```

#### Dependencies:

- Ensure curl and jq are installed for API requests and JSON parsing.

- For detailed instructions, prerequisites, and troubleshooting, see the README in the github-api folder.

<div id="user-content-toc">
<ul style="list-style: none;">
<summary>
  <h2> Happy scripting!🚀 </h2>
</summary>
</ul>
</div>
