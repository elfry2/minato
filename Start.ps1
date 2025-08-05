$InitialDirectory = "$PWD"

# Start PHP-CGI.
cd $HOME\scoop\apps\php82\8.2.29
Start-Process -NoNewWindow { .\php-cgi.exe -b 127.0.0.1:9123 }

# Start nginx.
cd $HOME\scoop\apps\nginx\1.29.0
start nginx

# Start PostgreSQL.
pg_ctl start

cd $InitialDirectory
