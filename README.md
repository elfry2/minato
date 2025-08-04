# shinra
A PowerShell script to (almost) effortlessly install and configure Git, PostgreSQL, HeidiSQL, nginx, PHP, Composer, NodeJS, MongoDB, and Neovim on Windows.

## Installation
On a PowerShell session with administrative privileges, navigate to the root directory of this project, then execute
```powershell
./Main.ps1
```

## Usage
To start PHP-CGI, on a new session, execute
```powershell
cd c:\tools\php84; php-cgi.exe -b 127.0.0.1:9123
```

To start nginx, on a new session, execute
```powershell
cd c:\tools\nginx-1.29.0; start nginx
```

For other usages, consult the respective documentation of the packages.
