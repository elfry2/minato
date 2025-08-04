# Install Chocolatey.
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install the required Chocolatey packages.
choco install --yes nginx --version=1.29.0
choco install --yes php --version=8.4.8
choco install --yes postgresql17 heidisql composer mongodb mongodb-compass nodejs neovim

# Copy the nginx.conf to the installation directory.
# Inspired by something found on https://gist.github.com/odan/b5f7de8dfbdbf76bef089776c868fea1.
Copy-Item ".\nginx.conf" -Destination "C:\tools\nginx-1.29.0\conf\" -Verbose 
Copy-Item ".\phpinfo.php" -Destination "C:\tools\nginx-1.29.0\html\" -Verbose
