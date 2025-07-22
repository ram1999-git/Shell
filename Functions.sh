#!/bin/bash

install_package() {
  if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This command has to be run with superuser privileges"
    exit 1
  fi

  dnf install $1 -y
  if [ $? -eq 0 ]; then
    echo "$1 installed successfully"
  else
    echo "Failed to install $1"
    exit 1
  fi
}

# Call the function
install_package $1
