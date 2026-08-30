# Mini Linux Lab 01

## User, Groups & Permissions

### Objective

Create a Linux user, assign groups, configure a shared directory, and verify permissions.

---

## Lab Files

```text
lab-01-user-group-permissions/
├── README.md
└── lab-01.sh
```

---

## Commands Used

| Command        | Purpose                           |
| -------------- | --------------------------------- |
| `whoami`       | Show current logged-in user       |
| `id`           | Display user identity information |
| `groupadd`     | Create a new group                |
| `useradd`      | Create a new user                 |
| `passwd`       | Set user account password         |
| `usermod -aG`  | Add user to group                 |
| `groups`       | Display user group memberships    |
| `getent group` | Verify group information          |
| `mkdir -p`     | Create directory safely           |
| `chown`        | Change owner and group            |
| `chmod 2775`   | Set permissions and setgid        |
| `touch`        | Create an empty file              |
| `ls -ld`       | Show directory permissions        |
| `ls -l`        | Show file ownership details       |

---

## Lab Configuration

### User

```text
manika
```

### Groups

```text
deployment
monitoring
```

### Shared Directory

```text
/opt/deployment
```

### Directory Configuration

```text
Owner: manika
Group: deployment
Permissions: 2775
```

---

## Verification

Run:

```bash
id manika
groups manika
getent group deployment
getent group monitoring
ls -ld /opt/deployment
ls -l /opt/deployment
```

Expected:

```text
User: manika
Groups: deployment, monitoring

Directory:
Owner: manika
Group: deployment

Test File:
Owner: manika
Group: deployment
```

---

## Run

Make the script executable:

```bash
chmod +x lab-01.sh
```

Run:

```bash
./lab-01.sh
```

## Status

```text
COMPLETED
```
