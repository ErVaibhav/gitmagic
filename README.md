# GitMagic Repository Scanner

This script scans a specified directory and all its subdirectories on a Linux system for available Git repositories. For each repository found, it retrieves and displays the current branch, the date of the last commit, and the location of the repository.

## Features

**Scan Directories:** Recursively searches for Git repositories starting from a specified directory.

**Repository Details:** For each repository, it displays:
The current branch name (highlighted in cyan)
The date of the last commit (highlighted in yellow)
The location (directory path) of the repository (highlighted in green)

**Formatted Output:** The script outputs information in a structured and color-coded format.

## Requirements

**Bash:** The script is written in Bash, which is available by default on Ubuntu systems.
**Git:** The script requires Git to be installed on the system to retrieve repository information.


## Usage

Clone or Download the Script:
   
   You can clone this repository or download the `git_magic.sh` script directly.

Make the Script Executable:

   After downloading, you need to make the script executable. Open a terminal and navigate to the directory where the script is located, then run:

   ```bash
   chmod +x git_magic.sh
```
   
## Usage via alias
Add alias in bashrc
```bash
alias gitmagic='/path_to/git_magic/git_magic.sh'
```
   
**Permission:** If the repository needs root, script need to be run with sudo prefix.
```bash
sudo ./git_magic.sh
```
**Output:**

   The script will output the following information for each Git repository found:

**Repository:** The directory path where the Git repository is located (highlighted in green).

**Branch:** The current branch name (highlighted in cyan).

**Last Commit Date:** The date of the last commit in that repository (highlighted in yellow).

```bash
   Example output:
   
   Scanning for Git Repositories in: /home/user
   ========================================================
   Repository: /home/user/projects/myrepo
   Branch: main
   Last Commit Date: Wed Aug 7 10:34:56 2024
   --------------------------------------------------------
   Repository: /home/user/another_project
   Branch: develop
   Last Commit Date: Tue Aug 6 15:21:23 2024
   --------------------------------------------------------
   ========================================================
   Scan Complete.
   ```

## Customization

**Changing the Search Directory:**
  
  By default, the script searches for Git repositories starting from the user's home directory (`$HOME`). You can change the search directory by modifying the `SEARCH_DIR` variable in the script:

  ```bash
  SEARCH_DIR="/path/to/your/directory"
