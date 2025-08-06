$InitialDirectory = "$PWD"

# Start PHP-CGI.
Start-Job { php-cgi.exe -b 127.0.0.1:9123 }

# Start nginx.
cd $HOME\scoop\apps\nginx\1.29.0
start .\nginx

# Start PostgreSQL.
Start-Job { pg_ctl start }

cd $InitialDirectory
