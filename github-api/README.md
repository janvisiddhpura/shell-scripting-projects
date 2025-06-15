# 🏁 GitHub Collaborator Lister

### 🚀 Overview

- **This Bash script lists all collaborators of a specified GitHub repository who have read (pull) access.**

- **It uses the GitHub REST API and requires a GitHub username and a personal access token for authentication.**
  
- **This script is fully tested and has been run successfully on a connected AWS EC2 instance.**

### 📋 Features

- Lists all users with read (pull) access to a repository
  
- Uses GitHub API v3
  
- Silent operation with clear output
  
- Tested and production-ready

### 🛠️ Prerequisites

- Before running the script, ensure the following:
  
1. Bash Shell (Linux/macOS, or WSL on Windows)
   
2. curl installed
   
   ```sh
   sudo apt install curl
   ```
   or
  
   ```sh
   sudo yum install curl
   ```

3. jq installed for JSON parsing

   ```sh
   sudo apt install jq
   ```
   or
   ```sh
   sudo yum install jq
   ```

4. A GitHub Personal Access Token with repo scope (for private repos) or public_repo scope (for public repos)
5. Your GitHub username

### 🔑 Obtaining a GitHub Personal Access Token

1. Go to GitHub Settings > Developer settings > Personal access tokens
   
2. Click Generate new token
  
3. Select the required scopes (repo or public_repo)
   
4. Copy the token and save it securely

### ⚙️ Setup

1. Clone or download this repository.
   
2. Set your GitHub credentials as environment variables:
   ```sh
   export username="your_github_username"
   export token="your_personal_access_token"
   ```
3. Make the script executable:
   ```sh
   chmod +x list_collaborators.sh
   ``` 
### 🏃‍♂️ Usage
   
```sh
./list_collaborators.sh <repo_owner> <repo_name>
```
 
- <repo_owner>: The GitHub username or organization that owns the repository

- <repo_name>: The name of the repository

#### Example:

```sh
./list_collaborators.sh octocat Hello-World
```
    
### 📝 Example Output
```text
Listing users with read access to octocat/Hello-World..
Users with read access to octocat/Hello-World:
octocat
collaborator2
collaborator3
```

### 🧪 Testing

- This script was tested on an AWS EC2 instance running Ubuntu 22.04 LTS.

- Both public and private repositories were checked.

- The script works as expected and returns accurate collaborator lists.

### ❓ Troubleshooting

- **No output or errors?**
  - Ensure your username and token environment variables are set and valid.

- **jq: command not found?**
  - Install jq with sudo apt install jq or sudo yum install jq.

- **curl: command not found?**
  - Install curl with sudo apt install curl or sudo yum install curl.

- **403 Forbidden or authentication errors?**
  - Double-check your GitHub token scopes and validity.

### 📢 Notes

- Your GitHub token is sensitive—never share it publicly.

- For private repositories, your token must have the repo scope.

- The script only lists users with at least read (pull) access.

### 📬 Feedback

- For questions or suggestions, please open an issue or contact the author.

<div id="user-content-toc">
<ul style="list-style: none;">
<summary>
  <h2> Happy scripting!🚀 </h2>
</summary>
</ul>
</div>
