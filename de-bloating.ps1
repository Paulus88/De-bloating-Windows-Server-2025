Remove-WindowsCapability -Online -Name AzureArcSetup~~~~
Remove-WindowsFeature -Name WindowsAdminCenterSetup
Get-AppxPackage | ?{$_.Name -like 'Microsoft.WindowsFeedbackHub*'} | Remove-AppxPackage -AllUsers
Get-AppxProvisionedPackage -Online | ?{$_.DisplayName -Like 'Microsoft.WindowsFeedbackHub'} | Remove-AppxProvisionedPackage -Online
