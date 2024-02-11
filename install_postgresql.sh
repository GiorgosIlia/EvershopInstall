#!/bin/bash

# Install curl
sudo apt-get update
sudo apt-get install -y curl

# Add Node.js repository and install Node.js
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Add PostgreSQL repository and key
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update package lists and install PostgreSQL
sudo apt-get update
sudo apt-get -y install postgresql

# Edit pg_hba.conf
sudo nano /etc/postgresql/16/main/pg_hba.conf

# Wait for editing to finish
read -p "Press Enter when you have finished editing pg_hba.conf..."

# Edit postgresql.conf
sudo nano /etc/postgresql/16/main/postgresql.conf

# Wait for editing to finish
read -p "Press Enter when you have finished editing postgresql.conf..."

# Restart PostgreSQL service
sudo service postgresql restart

# Set PostgreSQL password and create database
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'myPassword';"
sudo -u postgres psql -c "CREATE DATABASE evershop;"
sudo -u postgres psql -c "\q"

# Install create-evershop-app globally if not installed
npm list -g create-evershop-app || npm install -g create-evershop-app

# Create evershop app in my-app directory
cd my-app || exit
npx create-evershop-app my-app

echo "PostgreSQL installation, configuration, and setup completed. Evershop app created in 'my-app' directory."
