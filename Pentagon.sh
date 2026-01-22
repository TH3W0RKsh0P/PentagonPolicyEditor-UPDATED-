#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo '{
PPPPPP   EEEEEE   N    NN   TTTTTT    AAAAAA   GGGGGG    OOOOOO   N    NN
PP   PP  EE       NN   NN     TT     AA    AA  GG       OO    OO  NN   NN
PP   PP  EE       N N  NN     TT     AA    AA  GG       OO    OO  N N  NN
PPPPPP   EEEE     N  N NN     TT     AAAAAAAA  GG  GGG  OO    OO  N  N NN
PP       EE       N   NNN     TT     AA    AA  GG    G  OO    OO  N   NNN
PP       EE       N    NN     TT     AA    AA  GG    G  OO    OO  N    NN
PP       EEEEEE   N    NN     TT     AA    AA   GGGGGG   OOOOOO   N    NN

}'

echo '###################################'
echo '#                                 #'
echo '# Made by: StarkMist111960        #'
echo '# Policies from: Star_destroyer11 #'
echo '#                                 #'
echo '# Based upon Pollen Policy Editor #'
echo '#                                 #'
echo '###################################'


sleep 1

mkdir -p /etc/opt/chrome/policies/managed

echo '{
  "URLBlocklist": [],
  "SystemFeaturesDisableList": [],
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "AllowDeletingBrowserHistory": true,
  "IncognitoModeAvailability": 0,
  "ForceYouTubeRestrict": 0,
  "ForceGoogleSafeSearch": false,
  "SecondaryGoogleAccountSigninAllowed": true,
  "AllowDinosaurEasterEgg": true,
  "CACertificateManagementAllowed": 0,
  "ClientCertificateManagementAllowed": 0,
  "CrostiniAllowed": true,
  "CrostiniExportImportUIAllowed": true,
  "CrostiniPortForwardingAllowed": true,
  "DeviceAllowNewUsers": true, 
  "ExternalStorageDisabled": false,
  "ExternalStorageReadOnly": false,
  "LacrosAvailability": "user_choice",
  "LacrosSecondaryProfilesAllowed": true,
  "AllowScreenLock": true,
  "PhoneHubAllowed": true,
  "SmsMessagesAllowed": true,
  "WifiSyncAndroidAllowed": true,
  "NetworkFileSharesAllowed": true,
  "TaskManagerEndProcessEnabled": true,
  "SystemTerminalSshAllowed": true,
  "VmManagementCliAllowed": true,
  "DownloadRestrictions": 0,
  "TrashEnabled": true,
  "DriveDisabled": false,
  "DriveDisabledOverCellular": false,
  "ArcEnabled": true,
  "URLAllowlist": null,
  "AllowedDomainsForApps": null,
  "AllowedLanguages": null,
  "BlockThirdPartyCookies": null,
  "DefaultCookiesSetting": 1,
  "CookiesBlockedForUrls": null,
  "CookiesAllowedForUrls": null,
  "ExtensionManifestV2Availability": 2,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "ExtensionInstallForcelist": ["haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml","jjfeehgdeghiknkilcildnjofkcndjcm;https://goguardian.com/licenses/update.php","bhdheahnajobgndecdbggfmcojekgdko;https://clients2.google.com/service/update2/crx"],
  "ExtensionSettings": {"haldlgldplgnggkjaafhelgiaglafanh": { "blocked_permissions": [] },
  "CloudExtensionRequestEnabled": null,
  "PinnedLauncherApps": null,
  "BookmarkBarEnabled": null,
  "LidCloseAction": null,
   "DeviceWallpaperImage": {
               "level": "mandatory",
               "scope": "machine",
               "source": "cloud",
               "value": {
                  "hash": "8239a0818fa8f46019bc8580fec1735ee348594db59ace493408f1e8818c1396",
                  "url": "https://storage.googleapis.com/chromeos-mgmt/0gjdgxs2l87432/ChromeOsWallpaper/80df87ef-34dc-42bc-b361-7326d373f3b1"
               }
            },
  "ChromeOsLockOnIdleSuspend": null,
  "PowerManagementIdleSettings": null,
  "ShowFullUrlsInAddressBar": null,
  "HomepageIsNewTabPage": null,
  "HomepageLocation": null,
  "ShowHomeButton": null,
  "EnableSyncConsent": null,
  "PaymentMethodQueryEnabled": null,
  "SafeSitesFilterBehavior": null,
  "SafeBrowsingProtectionLevel": null,
  "ProxySettings": null,
  "DefaultClipboardSetting": null,
  "ClipboardAllowedForUrls": null,
  "ClipboardBlockedForUrls": null,
  "DefaultImagesSetting": null,
  "DefaultInsecureContentSetting": null,
  "DefaultJavaScriptSetting": null,
  "DefaultJavaScriptJitSetting": null,
  "DefaultNotificationsSetting": null,
  "DefaultPopupsSetting": null,
  "DefaultGeolocationSetting": 3,
  "RestoreOnStartup": null,
  "RestoreOnStartupURLs": null,
  "DefaultDownloadDirectory": null,
  "DownloadDirectory": null,
  "DownloadBubbleEnabled": null,
  "OsColorMode": "dark",
  "ArcPolicy": null,
  "ReportArcStatusEnabled": false,
  "ArcAppInstallEventLoggingEnabled": false,
  "InstantTetheringAllowed": true,
  "SmartLockSigninAllowed": true,
  "NearbyShareAllowed": true,
  "UptimeLimit": null,
  "EasyUnlockAllowed": true,
  "EmojiSuggestionEnabled": null,
  "PasswordManagerEnabled": true,
  "ProxyMode": null,
  "IsolatedAppsDeveloperModeAllowed": true,
  "PinUnlockAutosubmitEnabled": true,
  "WebAppInstallForceList": null,
  "UserAvatarCustomizationSelectorsEnabled": true,
  "DnsOverHttpsMode": null,
  "EditBookmarksEnabled": true,
  "JavaScriptBlockedForUrls": [],
  "ReportDeviceBootMode": false,
  "DeviceBlockDevmode": false
}' > /etc/opt/chrome/policies/managed/newpolicy.json

echo 'Success!'
echo 'Press ctrl shift q+q then repeatedly reload your policies!'
echo 'Thanks for using PentagonPolicyEditor'
