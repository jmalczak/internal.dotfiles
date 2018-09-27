echo "-----------------------------------------"
echo "Setting up the Windows system"
echo "-----------------------------------------"
echo ""

echo "Installing apps"

cinst 7zip
cinst visualstudiocode
cinst p4merge 

echo "Configuring Windows features"

cinst IIS-WebServerRole -source WindowsFeatures
cinst IIS-ISAPIFilter -source WindowsFeatures
cinst IIS-ISAPIExtensions -source WindowsFeatures
cinst IIS-NetFxExtensibility45 -source WindowsFeatures
cinst NetFx4Extended-ASPNET45 -source WindowsFeatures
cinst IIS-ASPNET -source WindowsFeatures
cinst IIS-ASPNET45 -source WindowsFeatures

echo "Configuring vscode"
rm -ErrorAction SilentlyContinue -Force $HOME\AppData\Roaming\Code\User\settings.json
cmd /c mklink "$HOME\AppData\Roaming\Code\User\settings.json"  "$HOME\.internal.dotfiles\vscode\settings.json"

echo "Configuring vsvim"
rm -ErrorAction SilentlyContinue -Force $HOME\_vsvimrc
cmd /c mklink "$HOME\_vsvimrc"  "$HOME\.internal.dotfiles\vim\_vsvimrc"
