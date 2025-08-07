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

Once the installation is finished succesfully, you can forget about it. The web root directory is `$HOME\scoop\apps\nginx\1.29.0\html`. Happy coding!
