

!define APP_NAME "2048Desktop"
!define COMP_NAME "Rupesh Sreeraman"
!define WEB_SITE "http://d2048.sourceforge.net/"
!define VERSION "1.0.0.0"
!define COPYRIGHT "Rupesh Sreeraman© 2014"
!define DESCRIPTION "Desktop version of 2048 game"
!define LICENSE_TXT "D:\2048-dist\LICENSE.txt"
!define INSTALLER_NAME "D:\Nsisqssg\Output\d\setup.exe"
!define MAIN_APP_EXE "2048desktop.exe"
!define INSTALL_TYPE "SetShellVarContext current"
!define REG_ROOT "HKCU"
!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"
!define UNINSTALL_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\${APP_NAME}"
!define MUI_ICON "D:\2048-dist\install.ico"
######################################################################

VIProductVersion  "${VERSION}"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}"

######################################################################

SetCompressor /SOLID Lzma
Name "${APP_NAME}"
Caption "${APP_NAME}"
OutFile "${INSTALLER_NAME}"
BrandingText "${APP_NAME}"
XPStyle on
InstallDirRegKey "${REG_ROOT}" "${REG_APP_PATH}" ""
InstallDir "$PROGRAMFILES\2048Desktop"


######################################################################

!include "MUI.nsh"

!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING

!insertmacro MUI_PAGE_WELCOME

!ifdef LICENSE_TXT
!insertmacro MUI_PAGE_LICENSE "${LICENSE_TXT}"
!endif

!insertmacro MUI_PAGE_DIRECTORY

!ifdef REG_START_MENU
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "2048Desktop"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${REG_ROOT}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${UNINSTALL_PATH}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${REG_START_MENU}"
!insertmacro MUI_PAGE_STARTMENU Application $SM_Folder
!endif

!insertmacro MUI_PAGE_INSTFILES

!define MUI_FINISHPAGE_RUN "$INSTDIR\${MAIN_APP_EXE}"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM

!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_UNPAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

######################################################################

Section -MainProgram
${INSTALL_TYPE}
SetOverwrite ifnewer
SetOutPath "$INSTDIR"
File "D:\2048-dist\2048desktop.exe"
File "D:\2048-dist\libgcc_s_dw2-1.dll"
File "D:\2048-dist\LICENSE.txt"
File "D:\2048-dist\mingwm10.dll"
File "D:\2048-dist\QtCore4.dll"
File "D:\2048-dist\QtGui4.dll"
File "D:\2048-dist\QtNetwork4.dll"
File "D:\2048-dist\QtWebKit4.dll"
SetOutPath "$INSTDIR\imageformats"
File "D:\2048-dist\imageformats\qgif4.dll"
File "D:\2048-dist\imageformats\qico4.dll"
File "D:\2048-dist\imageformats\qjpeg4.dll"
File "D:\2048-dist\imageformats\qmng4.dll"
File "D:\2048-dist\imageformats\qsvg4.dll"
File "D:\2048-dist\imageformats\qtga4.dll"
File "D:\2048-dist\imageformats\qtiff4.dll"
SetOutPath "$INSTDIR\2048"
File "D:\2048-dist\2048\.gitignore"
File "D:\2048-dist\2048\.jshintrc"
File "D:\2048-dist\2048\2048.png"
File "D:\2048-dist\2048\CONTRIBUTING.md"
File "D:\2048-dist\2048\favicon.ico"
File "D:\2048-dist\2048\index.html"
File "D:\2048-dist\2048\LICENSE.txt"
File "D:\2048-dist\2048\new.png"
File "D:\2048-dist\2048\Rakefile"
File "D:\2048-dist\2048\README.md"
SetOutPath "$INSTDIR\2048\style"
File "D:\2048-dist\2048\style\helpers.scss"
File "D:\2048-dist\2048\style\main.css"
File "D:\2048-dist\2048\style\main.scss"
SetOutPath "$INSTDIR\2048\style\fonts"
File "D:\2048-dist\2048\style\fonts\clear-sans.css"
File "D:\2048-dist\2048\style\fonts\ClearSans-Bold-webfont.eot"
File "D:\2048-dist\2048\style\fonts\ClearSans-Bold-webfont.svg"
File "D:\2048-dist\2048\style\fonts\ClearSans-Bold-webfont.woff"
File "D:\2048-dist\2048\style\fonts\ClearSans-Light-webfont.eot"
File "D:\2048-dist\2048\style\fonts\ClearSans-Light-webfont.svg"
File "D:\2048-dist\2048\style\fonts\ClearSans-Light-webfont.woff"
File "D:\2048-dist\2048\style\fonts\ClearSans-Regular-webfont.eot"
File "D:\2048-dist\2048\style\fonts\ClearSans-Regular-webfont.svg"
File "D:\2048-dist\2048\style\fonts\ClearSans-Regular-webfont.woff"
File "D:\2048-dist\2048\style\fonts\Play-Bold.ttf"
File "D:\2048-dist\2048\style\fonts\Play-Regular.ttf"
File "D:\2048-dist\2048\style\fonts\Play-Sans.woff"
SetOutPath "$INSTDIR\2048\meta"
File "D:\2048-dist\2048\meta\apple-touch-icon.png"
File "D:\2048-dist\2048\meta\apple-touch-startup-image-640x1096.png"
File "D:\2048-dist\2048\meta\apple-touch-startup-image-640x920.png"
SetOutPath "$INSTDIR\2048\js"
File "D:\2048-dist\2048\js\animframe_polyfill.js"
File "D:\2048-dist\2048\js\application.js"
File "D:\2048-dist\2048\js\bind_polyfill.js"
File "D:\2048-dist\2048\js\classlist_polyfill.js"
File "D:\2048-dist\2048\js\game_manager.js"
File "D:\2048-dist\2048\js\grid.js"
File "D:\2048-dist\2048\js\html_actuator.js"
File "D:\2048-dist\2048\js\keyboard_input_manager.js"
File "D:\2048-dist\2048\js\local_storage_manager.js"
File "D:\2048-dist\2048\js\tile.js"
SectionEnd

######################################################################

Section -Icons_Reg
SetOutPath "$INSTDIR"
WriteUninstaller "$INSTDIR\uninstall.exe"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_WRITE_BEGIN Application
CreateDirectory "$SMPROGRAMS\$SM_Folder"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!insertmacro MUI_STARTMENU_WRITE_END
!endif

!ifndef REG_START_MENU
CreateDirectory "$SMPROGRAMS\2048Desktop"
CreateShortCut "$SMPROGRAMS\2048Desktop\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$DESKTOP\${APP_NAME}.lnk" "$INSTDIR\${MAIN_APP_EXE}"
CreateShortCut "$SMPROGRAMS\2048Desktop\Uninstall ${APP_NAME}.lnk" "$INSTDIR\uninstall.exe"

!ifdef WEB_SITE
WriteIniStr "$INSTDIR\${APP_NAME} website.url" "InternetShortcut" "URL" "${WEB_SITE}"
CreateShortCut "$SMPROGRAMS\2048Desktop\${APP_NAME} Website.lnk" "$INSTDIR\${APP_NAME} website.url"
!endif
!endif

WriteRegStr ${REG_ROOT} "${REG_APP_PATH}" "" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayName" "${APP_NAME}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "UninstallString" "$INSTDIR\uninstall.exe"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayIcon" "$INSTDIR\${MAIN_APP_EXE}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "DisplayVersion" "${VERSION}"
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "Publisher" "${COMP_NAME}"

!ifdef WEB_SITE
WriteRegStr ${REG_ROOT} "${UNINSTALL_PATH}"  "URLInfoAbout" "${WEB_SITE}"
!endif
SectionEnd

######################################################################

Section Uninstall
${INSTALL_TYPE}
Delete "$INSTDIR\2048desktop.exe"
Delete "$INSTDIR\libgcc_s_dw2-1.dll"
Delete "$INSTDIR\LICENSE.txt"
Delete "$INSTDIR\mingwm10.dll"
Delete "$INSTDIR\QtCore4.dll"
Delete "$INSTDIR\QtGui4.dll"
Delete "$INSTDIR\QtNetwork4.dll"
Delete "$INSTDIR\QtWebKit4.dll"
Delete "$INSTDIR\imageformats\qgif4.dll"
Delete "$INSTDIR\imageformats\qico4.dll"
Delete "$INSTDIR\imageformats\qjpeg4.dll"
Delete "$INSTDIR\imageformats\qmng4.dll"
Delete "$INSTDIR\imageformats\qsvg4.dll"
Delete "$INSTDIR\imageformats\qtga4.dll"
Delete "$INSTDIR\imageformats\qtiff4.dll"
Delete "$INSTDIR\2048\.gitignore"
Delete "$INSTDIR\2048\.jshintrc"
Delete "$INSTDIR\2048\2048.png"
Delete "$INSTDIR\2048\CONTRIBUTING.md"
Delete "$INSTDIR\2048\favicon.ico"
Delete "$INSTDIR\2048\index.html"
Delete "$INSTDIR\2048\LICENSE.txt"
Delete "$INSTDIR\2048\new.png"
Delete "$INSTDIR\2048\Rakefile"
Delete "$INSTDIR\2048\README.md"
Delete "$INSTDIR\2048\style\helpers.scss"
Delete "$INSTDIR\2048\style\main.css"
Delete "$INSTDIR\2048\style\main.scss"
Delete "$INSTDIR\2048\style\fonts\clear-sans.css"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Bold-webfont.eot"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Bold-webfont.svg"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Bold-webfont.woff"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Light-webfont.eot"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Light-webfont.svg"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Light-webfont.woff"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Regular-webfont.eot"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Regular-webfont.svg"
Delete "$INSTDIR\2048\style\fonts\ClearSans-Regular-webfont.woff"
Delete "$INSTDIR\2048\style\fonts\Play-Bold.ttf"
Delete "$INSTDIR\2048\style\fonts\Play-Regular.ttf"
Delete "$INSTDIR\2048\style\fonts\Play-Sans.woff"
Delete "$INSTDIR\2048\meta\apple-touch-icon.png"
Delete "$INSTDIR\2048\meta\apple-touch-startup-image-640x1096.png"
Delete "$INSTDIR\2048\meta\apple-touch-startup-image-640x920.png"
Delete "$INSTDIR\2048\js\animframe_polyfill.js"
Delete "$INSTDIR\2048\js\application.js"
Delete "$INSTDIR\2048\js\bind_polyfill.js"
Delete "$INSTDIR\2048\js\classlist_polyfill.js"
Delete "$INSTDIR\2048\js\game_manager.js"
Delete "$INSTDIR\2048\js\grid.js"
Delete "$INSTDIR\2048\js\html_actuator.js"
Delete "$INSTDIR\2048\js\keyboard_input_manager.js"
Delete "$INSTDIR\2048\js\local_storage_manager.js"
Delete "$INSTDIR\2048\js\tile.js"
 
RmDir "$INSTDIR\2048\js"
RmDir "$INSTDIR\2048\meta"
RmDir "$INSTDIR\2048\style\fonts"
RmDir "$INSTDIR\2048\style"
RmDir "$INSTDIR\2048"
RmDir "$INSTDIR\imageformats"
 
Delete "$INSTDIR\uninstall.exe"
!ifdef WEB_SITE
Delete "$INSTDIR\${APP_NAME} website.url"
!endif

RmDir "$INSTDIR"

!ifdef REG_START_MENU
!insertmacro MUI_STARTMENU_GETFOLDER "Application" $SM_Folder
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\$SM_Folder\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\$SM_Folder\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\$SM_Folder"
!endif

!ifndef REG_START_MENU
Delete "$SMPROGRAMS\2048Desktop\${APP_NAME}.lnk"
Delete "$SMPROGRAMS\2048Desktop\Uninstall ${APP_NAME}.lnk"
!ifdef WEB_SITE
Delete "$SMPROGRAMS\2048Desktop\${APP_NAME} Website.lnk"
!endif
Delete "$DESKTOP\${APP_NAME}.lnk"

RmDir "$SMPROGRAMS\2048Desktop"
!endif

DeleteRegKey ${REG_ROOT} "${REG_APP_PATH}"
DeleteRegKey ${REG_ROOT} "${UNINSTALL_PATH}"
SectionEnd

