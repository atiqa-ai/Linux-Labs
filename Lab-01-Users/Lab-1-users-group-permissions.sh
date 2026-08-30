#!/bin/bash

## Mini Linux Lab 01

## User, Groups & Permissions

### Check current user

whoami

### Show user identity

id

### Create deployment group

sudo groupadd deployment

### Create monitoring group

sudo groupadd monitoring

### Create user with home

sudo useradd -m -s /bin/bash manika

### Set user password

sudo passwd manika

### Add user to deployment

sudo usermod -aG deployment manika

### Add user to monitoring

sudo usermod -aG monitoring manika

### Verify user identity

id manika

### Verify user groups

groups manika

### Check deployment group

getent group deployment

### Check monitoring group

getent group monitoring

### Create deployment directory

sudo mkdir -p /opt/deployment

### Set owner and group

sudo chown manika:deployment /opt/deployment

### Enable shared access

sudo chmod 2775 /opt/deployment

### Create test file

sudo -u manika touch /opt/deployment/test.txt

### Show directory permissions

ls -ld /opt/deployment

### Show file ownership

ls -l /opt/deployment
