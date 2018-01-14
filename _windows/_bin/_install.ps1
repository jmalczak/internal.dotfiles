echo "Installing apps"

cinst neovim
cinst googlechrome
cinst 7zip
cinst git
cinst nodejs
cinst visualstudiocode
cinst dropbox

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
./removeNotNeededWindowsSoftware.ps1
