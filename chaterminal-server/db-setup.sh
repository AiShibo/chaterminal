#!/bin/bash

# Detect package manager
if [ -x "$(command -v apt)" ]; then
  pkg_manager="apt"
elif [ -x "$(command -v pacman)" ]; then
  pkg_manager="pacman"
elif [ -x "$(command -v dnf)" ]; then
  pkg_manager="dnf"
else
  echo "Unsupported package manager. Exiting."
  exit 1
fi

# Common actions for all package managers
echo "This script will:"
echo "1. Check if MySQL is installed."
echo "2. If installed, it will prompt for the MySQL root password."
echo "3. If not installed, it will install MySQL and set the root password to 123456."
echo "4. Create a new MySQL database called 'chaterminal'."
echo "5. Create tables 'Users' and 'Chats' within the 'chaterminal' database."
echo ""
read -p "Do you want to proceed? (y/n): " proceed

if [ "$proceed" != "y" ]; then
  echo "Exiting."
  exit 1
fi

# Check if MySQL is installed and install if not
if mysql --version &>/dev/null; then
  echo "MySQL is already installed."
  read -sp "Please enter the MySQL root password: " root_password
else
  echo "MySQL is not installed. Installing now..."

  case $pkg_manager in
    apt)
      sudo apt update
      sudo apt install -y mysql-server
      ;;
    pacman)
      sudo pacman -Sy
      sudo pacman -S --noconfirm mysql
      ;;
    dnf)
      sudo dnf install -y mysql-server
      ;;
  esac

  root_password=123456
  sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY '$root_password';"
fi

# Start MySQL (just in case it's not already running)
sudo service mysql start

# Create the 'chaterminal' database and tables
echo "Creating the 'chaterminal' database and tables..."
mysql -uroot -p$root_password <<EOF
CREATE DATABASE IF NOT EXISTS chaterminal;
USE chaterminal;
CREATE TABLE IF NOT EXISTS Users (
  Username VARCHAR(50) PRIMARY KEY NOT NULL,
  Password VARCHAR(50) NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS Chats (
  ChatID INT PRIMARY KEY AUTO_INCREMENT,
  SenderUsername VARCHAR(50),
  ReceiverUsername VARCHAR(50),
  Text TEXT NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (SenderUsername) REFERENCES Users(Username),
  FOREIGN KEY (ReceiverUsername) REFERENCES Users(Username)
);
EOF

echo "Database and tables created successfully."
