# shinra
A PowerShell script to (almost) effortlessly install and configure Git, GitHub CLI, PostgreSQL, nginx, PHP, Composer, NodeJS, MongoDB, MongoDB Shell, Curlie, and Neovim on Windows.

## Installation
On PowerShell, execute (can be pasted at once)
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

Once the installation is finished successfully, you can forget about it.

The web root directory is `C:\Users\<user name>\scoop\apps\nginx\<nginx version>\html`. PostgreSQL runs on port `5432`. The username is `postgres` without any password. The loaded `php.ini` files are in `C:\Users\<user name>\scoop\apps\<php package name>\<php version>` and `C:\Users\<user name>\scoop\apps\<php package name>\<php version>\cli`. The latter file might override the former.
