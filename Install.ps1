# Install Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# Install Git via Scoop.
scoop install git

# Install Scoop bucket.
scoop bucket add extras

# Install the required Scoop packages.
scoop install postgresql heidisql nginx@1.29.0 php@8.4.8 composer nodejs mongodb mongodb-compass curlie neovim

# Copy the files into the installation directories.
# Inspired by something found on https://gist.github.com/odan/b5f7de8dfbdbf76bef089776c868fea1.
Copy-Item ".\nginx.conf" -Destination "$HOME\AppData\scoop\nginx1.29.0\conf\" -Verbose 
Copy-Item ".\phpinfo.php" -Destination "$HOME\AppData\scoop\nginx1.29.0\html\" -Verbose 
