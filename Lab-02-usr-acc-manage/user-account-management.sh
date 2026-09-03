#!/bin/bash

## Mini Linux Lab 02

## User Account Lock & Unlock

### Check user identity

id deployuser

### Check password status

sudo passwd -S deployuser

### Inspect shadow entry

sudo grep '^deployuser:' /etc/shadow

### Lock user account

sudo passwd -l deployuser

### Verify account lock

sudo passwd -S deployuser

### Check locked shadow entry

sudo grep '^deployuser:' /etc/shadow

### Test locked account

su - deployuser

### Unlock user account

sudo passwd -u deployuser

### Verify account unlock

sudo passwd -S deployuser

### Test unlocked account

su - deployuser

### Verify current user

whoami

### Check password aging

sudo chage -l deployuser

### Alternative lock method

sudo usermod -L deployuser

### Alternative unlock method

sudo usermod -U deployuser

### Verify final status

sudo passwd -S deployuser
