# Install Chocolatey.
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install the required Chocolatey packages.
choco install -y postgresql
choco install -y heidisql
choco install -y nginx --version=1.29.0
choco install -y php --version=8.4.8
choco install -y composer
choco install -y mongodb
choco install -y mongodb-compass
choco install -y nodejs
choco install -y neovim

# Copy the nginx.conf to the installation directory.
Copy-Item ".\nginx.conf" -Destination "C:\tools\nginx-1.29.0\conf\"
