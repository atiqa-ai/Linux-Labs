## Mini Linux Lab 02

## User Account Lock & Unlock

### Objective

Practice locking, unlocking, and verifying Linux user accounts.

---

---

## Lab Configuration

### User

```text
deployuser
```

---

## Commands Used

| Command      | Purpose               |
| ------------ | --------------------- |
| `id`         | Display user identity |
| `passwd -S`  | Check password status |
| `passwd -l`  | Lock user password    |
| `passwd -u`  | Unlock user password  |
| `usermod -L` | Lock user account     |
| `usermod -U` | Unlock user account   |
| `chage -l`   | Show password aging   |
| `su -`       | Switch to user        |
| `whoami`     | Show current user     |
| `grep`       | Search shadow entry   |

---

## Step 1 — Check User

```bash
id deployuser
```

---

## Step 2 — Check Password Status

```bash
sudo passwd -S deployuser
```

Expected active status:

```text
P
```

---

## Step 3 — Inspect Shadow Entry

```bash
sudo grep '^deployuser:' /etc/shadow
```

Do not share the output publicly.

---

## Step 4 — Lock Account

```bash
sudo passwd -l deployuser
```

Verify:

```bash
sudo passwd -S deployuser
```

Expected:

```text
L
```

---

## Step 5 — Test Locked Account

```bash
su - deployuser
```

Password authentication should fail while locked.

Exit:

```bash
exit
```

---

## Step 6 — Unlock Account

```bash
sudo passwd -u deployuser
```

Verify:

```bash
sudo passwd -S deployuser
```

Expected:

```text
P
```

---

## Step 7 — Test Unlocked Account

```bash
su - deployuser
```

Verify:

```bash
whoami
```

Expected:

```text
deployuser
```

Exit:

```bash
exit
```

---

## Step 8 — Check Password Aging

```bash
sudo chage -l deployuser
```

---

## Alternative Commands

### Lock

```bash
sudo usermod -L deployuser
```

### Unlock

```bash
sudo usermod -U deployuser
```

---

## Final Verification

```bash
id deployuser

sudo passwd -S deployuser

sudo chage -l deployuser
```

Expected final status:

```text
P
```

---

## Status

```text
COMPLETED
```
