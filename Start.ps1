 $InitialDirectory = "$CWD"

# Start PHP-CGI.
cd $HOME\AppData\scoop\php82
Start-Process -NoNewWindow php-cgi.exe -b 127.0.0.1:9123

# Start nginx.
cd $HOME\AppData\scoop\nginx1.29.0
start nginx

# Start PostgreSQL.
pg_ctl start

cd $InitialDirectory
