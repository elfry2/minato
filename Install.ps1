# Install Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Out-Null

# Install Git via Scoop.
scoop install git -ErrorAction "Resume"

# Install the required Scoop buckets.
scoop bucket add extras -ErrorAction "Resume"

# Install the required Scoop packages.
scoop install postgresql dbeaver nginx@1.29.0 php@8.2.0 composer nodejs mongodb mongodb-compass curlie neovim -ErrorAction "Resume"

# Copy the files into the installation directories.
# Inspired by something found on https://gist.github.com/odan/b5f7de8dfbdbf76bef089776c868fea1.
Copy-Item ".\nginx.conf" -Destination "$HOME\scoop\apps\nginx\1.29.0\conf\" -Verbose
Copy-Item ".\phpinfo.php" -Destination "$HOME\scoop\apps\nginx\1.29.0\html\" -Verbose
