#!/bin/bash

echo "Starting Server Initialization..."

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

echo "Updating package lists..."
# apt-get update -y && apt-get upgrade -y

echo "Installing dependencies..."
# apt-get install -y git curl vim htop

echo "Server setup finished."
