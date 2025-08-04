# shinra
A PowerShell script to (almost) effortlessly install and configure Git, PostgreSQL, HeidiSQL, nginx, PHP, Composer, NodeJS, MongoDB, MongoDB Compass, Curlie, and Neovim on Windows.

## Installation
On PowerShell, navigate to the root directory of this project, then execute
```powershell
# Install Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Out-Null

# Install Git via Scoop.
scoop install git

# Clone the repo and run the installation script.
git clone https://github.com/elfry2/shinra
cd shinra
./Install.ps1
```

## Usage
To start PHP-CGI, on a new session, execute
```powershell
cd $HOME\AppData\scoop\php82; php-cgi.exe -b 127.0.0.1:9123
```

To stop PHP-CGI, simply press ```Ctrl```+```C```.

To start nginx, on a new session, execute
```powershell
cd $HOME\AppData\scoop\nginx1.29.0; start nginx
```

To stop nginx, execute
```powershell
taskkill /IM nginx.exe /F
```

For other usages, consult the respective documentation of the packages.
