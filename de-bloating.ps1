Remove-WindowsCapability -Online -Name AzureArcSetup~~~~
Remove-WindowsFeature -Name WindowsAdminCenterSetup
Get-AppxPackage | ?{$_.Name -like 'Microsoft.WindowsFeedbackHub*'} | Remove-AppxPackage -AllUsers
Get-AppxProvisionedPackage -Online | ?{$_.DisplayName -Like 'Microsoft.WindowsFeedbackHub'} | Remove-AppxProvisionedPackage -Online
Set-Location C:\Windows\System32
SnippingTool /uninstall
mspaint /uninstall
mstsc /uninstall
cd C:\Program Files (x86)\Microsoft\EdgeWebView\Application\132.0.2957.127\Installer
setup --uninstall --msedgewebview --system-level
cd C:\Program Files (x86)\Microsoft\Edge\Application\132.0.2957.127\Installer
setup --uninstall --msedge --channel=stable --system-level
