````markdown
##  Linux Lab 03

## File Management & Backup

### Objective

Practice Linux file operations and create, inspect, and restore compressed backups.


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

##  Challenge 2 — SSH Backup

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
```
