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

### 1. Prerequisites
Ensure `zip` is installed:
```bash
yum install zip -y  # or apt install zip
