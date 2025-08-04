# Install Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Out-Null

# Install git via Scoop.
scoop install git

# Install the required Scoop buckets.
scoop bucket add extras

# Install the required Scoop packages
scoop install postgresql nginx php composer nodejs mongodb neovim
