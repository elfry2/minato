# shinra
A PowerShell script to (almost) effortlessly install and configure Git, PostgreSQL, DBeaver, nginx, PHP, Composer, NodeJS, MongoDB, MongoDB Compass, Curlie, and Neovim on Windows.

## Installation
On PowerShell, execute
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
To start the servers, navigate to the root directory of this repo, and execute
```powershell
.\Start.ps1
```

To start the servers automatically on startup, copy a shortcut to ```Start.ps1``` to ```%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup```.

To check whether the servers are running, visit ```http://localhost/phpinfo.php```.

For other usages, consult the respective documentation of the packages.
