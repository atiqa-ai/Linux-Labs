```bash
#!/bin/bash

##  Linux Lab 03
## File Management & Backup

### ============================================================
### TOPIC 1 — FILE & DIRECTORY OPERATIONS
### ============================================================

### Step 1 — Create lab workspace
mkdir -p ~/linux-labs/lab-03
cd ~/linux-labs/lab-03

### Step 2 — Verify workspace
pwd
ls -la

### Step 3 — Create directories
mkdir configs
mkdir backup
mkdir test

### Step 4 — Verify directories
ls -l

### Step 5 — Create configuration files
touch configs/app.conf
touch configs/database.conf
touch configs/server.conf

### Step 6 — Verify configuration files
ls -l configs

### Step 7 — Copy a file
cp configs/app.conf backup/

### Step 8 — Verify copied file
ls -l backup

### Step 9 — Create directory copy
mkdir config-copy

### Step 10 — Copy directory contents
cp -r configs/* config-copy/

### Step 11 — Verify copied directory
ls -l config-copy

### Step 12 — Move a file
mv configs/server.conf backup/

### Step 13 — Verify moved file
ls -l configs
ls -l backup

### Step 14 — Rename a file
mv configs/database.conf configs/mysql.conf

### Step 15 — Verify renamed file
ls -l configs

### Step 16 — Create temporary file
touch test/temp.txt

### Step 17 — Remove temporary file
rm test/temp.txt

### Step 18 — Verify file removal
ls -la test


### ============================================================
### TOPIC 2 — BACKUP & ARCHIVE
### ============================================================

### Step 19 — Inspect /etc directory
ls -ld /etc

### Step 20 — View /etc contents
ls -l /etc | head

### Step 21 — Create backup directory
mkdir -p ~/linux-backups

### Step 22 — Backup /etc
sudo tar -czvf ~/linux-backups/etc-backup.tar.gz /etc

### Step 23 — Verify backup file
ls -lh ~/linux-backups/

### Step 24 — List archive contents
tar -tzf ~/linux-backups/etc-backup.tar.gz | head -30

### Step 25 — Create restore directory
mkdir -p ~/linux-backups/restore-test

### Step 26 — Extract backup
tar -xzf ~/linux-backups/etc-backup.tar.gz \
-C ~/linux-backups/restore-test

### Step 27 — Verify restored directory
ls ~/linux-backups/restore-test

### Step 28 — Verify restored /etc
ls ~/linux-backups/restore-test/etc | head

### Step 29 — Verify restored file
ls -l ~/linux-backups/restore-test/etc/passwd


### ============================================================
### MINI CHALLENGE 1 — FILE MANAGEMENT
### ============================================================

### Create challenge directories
mkdir -p ~/linux-labs/devops-lab/app
mkdir -p ~/linux-labs/devops-lab/backup
mkdir -p ~/linux-labs/devops-lab/logs

### Create challenge files
touch ~/linux-labs/devops-lab/app/config.conf
touch ~/linux-labs/devops-lab/app/app.conf
touch ~/linux-labs/devops-lab/logs/app.log

### Copy configuration file
cp ~/linux-labs/devops-lab/app/config.conf \
~/linux-labs/devops-lab/backup/

### Move log file
mv ~/linux-labs/devops-lab/logs/app.log \
~/linux-labs/devops-lab/backup/

### Rename application configuration
mv ~/linux-labs/devops-lab/app/app.conf \
~/linux-labs/devops-lab/app/production.conf

### Verify challenge
ls -R ~/linux-labs/devops-lab


### ============================================================
### MINI CHALLENGE 2 — SSH BACKUP
### ============================================================

### Create SSH backup directory
mkdir -p ~/linux-backups

### Backup /etc/ssh
sudo tar -czvf ~/linux-backups/ssh-backup.tar.gz /etc/ssh

### Check backup size
ls -lh ~/linux-backups/ssh-backup.tar.gz

### List SSH archive contents
tar -tzf ~/linux-backups/ssh-backup.tar.gz

### Create SSH restore directory
mkdir -p ~/linux-backups/ssh-restore

### Extract SSH backup
tar -xzf ~/linux-backups/ssh-backup.tar.gz \
-C ~/linux-backups/ssh-restore

### Verify SSH restore
ls -l ~/linux-backups/ssh-restore/etc/ssh
```

````

**Important:** This `.sh` is intentionally a **lab command record**, not an unattended automation script. Commands such as `rm`, `sudo tar`, and the challenge sections should be executed deliberately rather than blindly running the entire file.

---

### 2. `README.md`

```markdown
## Mini Linux Lab 03

## File Management & Backup

### Objective

Practice Linux file operations and create, inspect, and restore compressed backups.

### Lab Files

03-file-management-backup/
├── README.md
└── lab-03-file-management-backup.sh

### Topics Covered

1. File & Directory Operations
2. Backup & Archive

---

## Topic 1 — File & Directory Operations

### Step 1 — Create Workspace

```bash
mkdir -p ~/linux-labs/lab-03
cd ~/linux-labs/lab-03
````

### Step 2 — Create Directories

```bash
mkdir configs
mkdir backup
mkdir test
```

### Step 3 — Create Files

```bash
touch configs/app.conf
touch configs/database.conf
touch configs/server.conf
```

### Step 4 — Copy File

```bash
cp configs/app.conf backup/
```

### Step 5 — Copy Directory Contents

```bash
mkdir config-copy
cp -r configs/* config-copy/
```

### Step 6 — Move File

```bash
mv configs/server.conf backup/
```

### Step 7 — Rename File

```bash
mv configs/database.conf configs/mysql.conf
```

### Step 8 — Remove File

```bash
touch test/temp.txt
rm test/temp.txt
```

### Step 9 — Verify Files

```bash
ls -l configs
ls -l backup
ls -l config-copy
ls -la test
```

---

## Topic 2 — Backup & Archive

### Step 1 — Inspect /etc

```bash
ls -ld /etc
ls -l /etc | head
```

### Step 2 — Create Backup Directory

```bash
mkdir -p ~/linux-backups
```

### Step 3 — Backup /etc

```bash
sudo tar -czvf ~/linux-backups/etc-backup.tar.gz /etc
```

### Step 4 — Verify Backup

```bash
ls -lh ~/linux-backups/
```

### Step 5 — List Archive Contents

```bash
tar -tzf ~/linux-backups/etc-backup.tar.gz | head -30
```

### Step 6 — Create Restore Directory

```bash
mkdir -p ~/linux-backups/restore-test
```

### Step 7 — Extract Backup

```bash
tar -xzf ~/linux-backups/etc-backup.tar.gz \
-C ~/linux-backups/restore-test
```

### Step 8 — Verify Restore

```bash
ls ~/linux-backups/restore-test
ls ~/linux-backups/restore-test/etc | head
```

### Step 9 — Verify Restored File

```bash
ls -l ~/linux-backups/restore-test/etc/passwd
```

---

## Mini Challenge 1 — File Management

Create:

```text
devops-lab/
├── app/
│   ├── config.conf
│   └── app.conf
├── backup/
└── logs/
    └── app.log
```

Then:

```text
1. Copy config.conf → backup
2. Move app.log → backup
3. Rename app.conf → production.conf
4. Verify the structure
```

Verification:

```bash
ls -R ~/linux-labs/devops-lab
```

---

## Mini Challenge 2 — SSH Backup

### Create Backup

```bash
sudo tar -czvf ~/linux-backups/ssh-backup.tar.gz /etc/ssh
```

### Check Backup

```bash
ls -lh ~/linux-backups/ssh-backup.tar.gz
```

### List Contents

```bash
tar -tzf ~/linux-backups/ssh-backup.tar.gz
```

### Extract Backup

```bash
mkdir -p ~/linux-backups/ssh-restore

tar -xzf ~/linux-backups/ssh-backup.tar.gz \
-C ~/linux-backups/ssh-restore
```

### Verify Restore

```bash
ls -l ~/linux-backups/ssh-restore/etc/ssh
```

---

## Commands Used

| Command    | Purpose                    |
| ---------- | -------------------------- |
| `mkdir`    | Create directories         |
| `touch`    | Create empty files         |
| `ls`       | List files                 |
| `pwd`      | Show current path          |
| `cp`       | Copy files                 |
| `cp -r`    | Copy directories           |
| `mv`       | Move files                 |
| `rm`       | Remove files               |
| `tar`      | Create archives            |
| `tar -tzf` | List archive contents      |
| `tar -xzf` | Extract compressed archive |

---

## Lab Verification

```bash
ls -lh ~/linux-backups/
```

```bash
tar -tzf ~/linux-backups/etc-backup.tar.gz | head
```

```bash
ls -l ~/linux-backups/restore-test/etc/passwd
```

Expected:

```text
etc-backup.tar.gz
Restored /etc directory
Restored passwd file
```

### Status

COMPLETED

```

This gives you a clean progression:

**Lab 1 → Users, Groups & Permissions**  
**Lab 2 → User Account Management**  
**Lab 3 → File Management & Backup**  
**Lab 4 → SSH Keys** ⏭️

Your GitHub repository is starting to look like an actual **Linux/DevOps practical lab portfolio**, rather than a collection of random commands.
```
