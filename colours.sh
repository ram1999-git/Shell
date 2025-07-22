Timestamp=$(date +%F-%H-%M-%S)
Script_Name=$(echo $0 | cut -d "." -f1)
Log_file=/temp/$Script_Name-$Timestamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "script started executing at :$Timestamp"

install_package() {
  if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This command has to be run with superuser privileges"
    exit 1
  fi

  dnf install $1 -y
  if [ $? -eq 0 ]; then
    echo -e "$1 $G installed successfully"
  else
    echo -e "$R Failed to install $1"
    exit 1
  fi
}

# Call the function
install_package $1
