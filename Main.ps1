# Install Chocolatey.
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install the required Chocolatey packages.
choco install -y postgresql heidisql nginx php composer mongodb nodejs neovim

# Copy the nginx.conf to the installation directory.
