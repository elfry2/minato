$InitialDirectory = "$PWD"

# Start PHP-CGI.
Start-Process powershell { php-cgi.exe -b 127.0.0.1:9123 } -WindowStyle hidden

# Start nginx.
Start-Process powershell { cd $HOME\scoop\apps\nginx\1.29.0; start .\nginx } -WindowStyle hidden

# Start PostgreSQL.
Start-Process powershell { pg_ctl start } -WindowStyle hidden

cd $InitialDirectory
