# xnukernel-backup-automation
Bash script for automated website backups and remote server transfers

# xnukernel Website Backup Automation

## 📌 Project Overview
As part of Day 10 of my 100-Day DevOps Challenge, I developed a Bash automation script for xnukernel Industries. The goal was to automate the backup of a static website from a production application server to a remote backup server.

## 🛠 Features
- **Automated Compression:** Packages the `/var/www/html/beta` directory into a `.zip` archive.
- **Redundant Storage:** Saves a local copy in `/backup/` and a remote copy on the Nautilus Backup Server.
- **Passwordless Transfer:** Utilizes SSH Key-Based Authentication for secure, non-interactive file transfers via `scp`.
- **Permission-Safe:** Designed to run under a standard user (e.g., `tony`) without requiring `sudo` privileges.

## 🚀 Lab Requirements & Constraints
- **Package Dependency:** `zip` must be installed on the host machine.
- **Location:** Script resides in `/scripts/beta_backup.sh`.
- **Security:** No passwords can be prompted during execution.
- **Cleanup:** Local backups are stored in a temporary directory cleaned weekly.

## 🔧 Setup & Usage

# Step-by-Step Implementation Guide
# Follow these steps to replicate the environment and run the script.

## Step 1: Install Dependencies
## The script requires the zip utility. Install it manually on the App Server:

## For RHEL/CentOS/Rocky Linux:
sudo yum install zip -y

## For Ubuntu/Debian:
sudo apt install zip -y

# Step 2: Configure Passwordless SSH
# To satisfy the requirement that the script must not ask for a password, we set up SSH keys between App Server 1 and the Nautilus Backup Server.

# Generate the SSH Key (on App Server 1):

ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

## Copy the Key to the Backup Server:

## Replace 'tony' with username and 'backup-server' with backup servername or IP
ssh-copy-id tony@backup-server
Verify: Try ssh tony@backup-server. If you log in without a password, you are ready!

# Step 3: Set Up the Script
# Create the directory:

mkdir -p /scripts
Create the file:

vi /scripts/beta_backup.sh
Paste the script content (found in /scripts/beta_backup.sh of this repo).

Step 4: Set Permissions and Run
The script must be executable by the server user:

chmod +x /scripts/beta_backup.sh
/scripts/beta_backup.sh
