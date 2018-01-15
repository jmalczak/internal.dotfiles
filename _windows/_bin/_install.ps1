echo "Installing apps"

cinst googlechrome
cinst 7zip
cinst git
cinst nodejs
cinst visualstudiocode
cinst dropbox
cinst mongodb

echo "Add mongodb to PATH"
$Path=(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name Path).Path
Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value ($Path += ';C:\Program Files\MongoDB\Server\3.6\bin')

echo "Configuring Windows features"

cinst IIS-WebServerRole -source WindowsFeatures
cinst IIS-ISAPIFilter -source WindowsFeatures
cinst IIS-ISAPIExtensions -source WindowsFeatures
cinst IIS-NetFxExtensibility45 -source WindowsFeatures
cinst NetFx4Extended-ASPNET45 -source WindowsFeatures
cinst IIS-ASPNET -source WindowsFeatures
cinst IIS-ASPNET45 -source WindowsFeatures

echo "Developer mode is needed to install WSL"
cinst Microsoft-Windows-Subsystem-Linux -source WindowsFeatures

echo "Remove not needed Windows software"
& "$HOME\.internal.dotfiles\_windows\_bin\removeNotNeededWindowsSoftware.ps1"

echo "Configuring vscode"
rm -ErrorAction SilentlyContinue -Force $HOME\AppData\Roaming\Code\User\settings.json
cmd /c mklink "$HOME\AppData\Roaming\Code\User\settings.json"  "$HOME\.internal.dotfiles\vscode\settings.json"

echo "Configuring vsvim"
rm -ErrorAction SilentlyContinue -Force $HOME\_vsvimrc
cmd /c mklink "$HOME\_vsvimrc"  "$HOME\.internal.dotfiles\vim\_vsvimrc"