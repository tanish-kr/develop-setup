Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y googlechrome
choco install -y slack
choco install -y docker-desktop
choco install -y vscode
choco install -y googlejapaneseinput
choco install -y vim
choco install -y office365business
choco install -y postman
choco install -y virtualbox
choco install -y steam-client
choco install -y lhaplus
choco install -y microsoft-windows-terminal
choco install -y cmder
choco install -y kindle
choco install -y avastfreeantivirus
choco install -y powertoys
choco install -y autohotkey
