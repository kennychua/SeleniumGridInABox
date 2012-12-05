!macro CustomCodePostInstall
	;Ensure warning isn't shown if invalid package is properly upgraded
	${If} ${FileExists} "$INSTDIR\LupoApp.ini"
		ReadINIStr $0 "$INSTDIR\App\AppInfo\appinfo.ini" "Version" "PackageVersion"
		CreateDirectory "$INSTDIR\Data"
		CreateDirectory "$INSTDIR\Data\settings"
		WriteINIStr "$INSTDIR\Data\settings\FirefoxPortableSettings.ini" "FirefoxPortableSettings" "InvalidPackageWarningShown" $0
	${EndIf}
!macroend