mkdir C:\z
cd /d C:\z
curl -O https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe
curl "https://www.python.org/ftp/python/3.10.2/python-3.10.2-amd64.exe" -o "python.exe"
curl -L -O https://github.com/git-for-windows/git/releases/download/v2.35.1.windows.2/Git-2.35.1.2-64-bit.exe
Docker%20Desktop%20Installer.exe install --quiet
python.exe /S /install
Git-2.35.1.2-64-bit.exe /silent
cd /d C:\
rd /s /q z
git clone https://github.com/mr-kritik/VZ.git
pause
