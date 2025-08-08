$InitialDirectory = "$PWD"

# Start PHP-CGI.
Start-Process powershell { php-cgi.exe -b 127.0.0.1:9123 } -Verbose -WindowStyle hidden

# Start nginx.
Start-Process powershell {
  . C:\shinra\Config.ps1;
  cd "$HOME\scoop\apps\nginx\$NginxVersion";
  start .\nginx
} -Verbose -WindowStyle hidden

# Start PostgreSQL.
Start-Process powershell { pg_ctl start } -Verbose -WindowStyle hidden

cd $InitialDirectory
