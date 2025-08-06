# Install Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Out-Null

# Install Git via Scoop.
scoop install git

# Install the required Scoop buckets.
scoop bucket add extras
scoop bucket add versions

# Install the required Scoop packages.
scoop install nginx@1.29.0
scoop install php82@8.2.29
#scoop install nginx
#scoop install php
scoop install postgresql composer nodejs mongodb mongosh curlie neovim gh

# Copy the files into the installation directories.
# Inspired by something found on https://gist.github.com/odan/b5f7de8dfbdbf76bef089776c868fea1.
Copy-Item ".\nginx.conf" -Destination "$HOME\scoop\apps\nginx\1.29.0\conf\" -Verbose
Copy-Item ".\index.php" -Destination "$HOME\scoop\apps\nginx\1.29.0\html\" -Verbose
Copy-Item ".\php.ini" -Destination "$HOME\scoop\apps\php82\8.2.29" -Verbose
Copy-Item "cli\php.ini" -Destination "$HOME\scoop\apps\php82\8.2.29\cli" -Verbose

echo "Script finished. Make sure to read the output."
