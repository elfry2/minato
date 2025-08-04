# Install Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Out-Null

# Install the required Scoop packages
scoop install git postgresql nginx php composer nodejs mongodb neovim
