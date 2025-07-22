install_package() {
  dnf install $1 -y
  if [ $? -eq 0 ]; then
    echo "$1 installed successfully"
  else
    echo "Failed to install $1"
    exit 1
  fi
}

# Call function
install_package git
install_package mysql
