#define Name "BG Mods Installer"
#define Version "1.0.1"
#define Publisher "Fantaz"
#define URL "https://www.nexusmods.com/burglingnomes/mods"
#define GameName "Burglin' Gnomes Demo"
#define GameExeName "Gnomium.exe"

; GitHub repository URLs
#define GitHub99Gnomes "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/99-Gnomes/99Gnomes.dll"
#define GitHubBetterLobbies "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/Better-Lobbies/BetterLobbies.dll"
#define GitHubController "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/Controller-Support/ControllerSupport.dll"
#define GitHubMoreHats "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/More-Hats/MoreHats.dll"
#define GitHubSpawnMenu "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/Spawn-Menu/SpawnMenu.dll"
#define GitHubThirdPerson "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/ThirdPerson-View/3rdPersonView.dll"

#define GitHubDoom1 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/DOOM1.WAD"
#define GitHubDoom2 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/ManagedDoomLib.dll"
#define GitHubDoom3 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/System.Buffers.dll"
#define GitHubDoom4 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/System.Memory.dll"
#define GitHubDoom5 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/System.Numerics.Vectors.dll"
#define GitHubDoom6 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/System.Runtime.CompilerServices.Unsafe.dll"
#define GitHubDoom7 "https://github.com/FaNt4zMa/burglin-gnomes-mods/raw/refs/heads/main/DOOM/doom_gnome.dll"

[Setup]
; Basic App Info
AppId={{85BC033B-62A0-472C-BE56-E3648717639D}}
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; Version Info
VersionInfoVersion={#Version}.0
VersionInfoCompany={#Publisher}
VersionInfoDescription=Mods Downloader & Installer for {#GameName}
VersionInfoCopyright=Copyright (C) 2026 {#Publisher}
VersionInfoProductName={#Name}
VersionInfoProductVersion={#Version}

; Installer Settings
DefaultDirName=C:\Program Files (x86)\Steam\steamapps\common\{#GameName}
DirExistsWarning=no
DisableProgramGroupPage=yes
DisableDirPage=no
DisableWelcomePage=no
OutputDir=output
OutputBaseFilename=BG_Mods_Installer_v{#Version}
Compression=lzma2/ultra64
SolidCompression=yes

; Visual Settings
WizardStyle=modern dynamic
UninstallDisplayIcon={app}\{#GameExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Types]
Name: "full"; Description: "Full installation"
Name: "recommended"; Description: "Recommended mods"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "bepinex"; Description: "BepInEx 5 (Required)"; Types: full recommended custom; Flags: fixed
Name: "gnomes99"; Description: "99 Gnomes - Allow up to 99 players in a single lobby"; Types: full recommended
Name: "betterlobbies"; Description: "Better Lobbies - Game code system for easier joining"; Types: full recommended
Name: "controllersupport"; Description: "Controller Support - Adds proper controller support"; Types: full
Name: "doom"; Description: "DOOM - Play DOOM on the in-game TV"; Types: full
Name: "morehats"; Description: "More Hats - Change hat colors with a keybind"; Types: full recommended
Name: "spawnmenu"; Description: "Spawn Menu - Adds the ability to spawn items and fly"; Types: full
Name: "thirdpersonview"; Description: "Third Person View - Adds a third-person camera view"; Types: full

[Files]
; Bundled files
Source: "BepInEx\*"; DestDir: "{app}"; Components: bepinex; Flags: ignoreversion recursesubdirs createallsubdirs

; Downloaded mod files from temp directory
Source: "{tmp}\99Gnomes.dll"; DestDir: "{app}\BepInEx\plugins"; Components: gnomes99; Flags: external ignoreversion
Source: "{tmp}\BetterLobbies.dll"; DestDir: "{app}\BepInEx\plugins"; Components: betterlobbies; Flags: external ignoreversion
Source: "{tmp}\ControllerSupport.dll"; DestDir: "{app}\BepInEx\plugins"; Components: controllersupport; Flags: external ignoreversion
Source: "{tmp}\MoreHats.dll"; DestDir: "{app}\BepInEx\plugins"; Components: morehats; Flags: external ignoreversion
Source: "{tmp}\SpawnMenu.dll"; DestDir: "{app}\BepInEx\plugins"; Components: spawnmenu; Flags: external ignoreversion
Source: "{tmp}\3rdPersonView.dll"; DestDir: "{app}\BepInEx\plugins"; Components: thirdpersonview; Flags: external ignoreversion

Source: "{tmp}\DOOM1.WAD"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion
Source: "{tmp}\ManagedDoomLib.dll"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion
Source: "{tmp}\System.Buffers.dll"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion
Source: "{tmp}\System.Memory.dll"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion
Source: "{tmp}\System.Numerics.Vectors.dll"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion
Source: "{tmp}\System.Runtime.CompilerServices.Unsafe.dll"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion
Source: "{tmp}\doom_gnome.dll"; DestDir: "{app}\BepInEx\plugins\DOOM"; Components: doom; Flags: external ignoreversion

[Dirs]
; Ensure plugins directory exists
Name: "{app}\BepInEx\plugins"; Permissions: users-modify

[Code]
var
  DownloadPage: TDownloadWizardPage;

procedure InitializeWizard();
var
  InfoPage: TOutputMsgMemoWizardPage;
  ModListText: String;
begin
  // Create download page
  DownloadPage := CreateDownloadPage('Downloading Mods', 'Downloading the latest mod files from GitHub...', nil);
  
  // Create mod list page
  ModListText := '• 99 Gnomes' + #13#10 +
                 '• Better Lobbies' + #13#10 +
                 '• Controller Support' + #13#10 +
                 '• DOOM' + #13#10 +
                 '• More Hats' + #13#10 +
                 '• Spawn Menu' + #13#10 +
                 '• Third Person View' + #13#10#13#10 +
                 'You can choose which mods to install on the next screen.' + #13#10#13#10 +
                 'NOTE: All mods will be downloaded from GitHub (requires internet).';
  
  InfoPage := CreateOutputMsgMemoPage(wpWelcome,
    'Available Mods', 
    'The following mods are included in this installer',
    'Below is a list of all available mods:',
    ModListText);
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ErrorMessage: String;
begin
  Result := True;
  
  // Validate game directory
  if CurPageID = wpSelectDir then
  begin
    if not FileExists(WizardDirValue + '\{#GameExeName}') then
    begin
      MsgBox('Error: Could not find {#GameExeName} in the selected folder.' + #13#10#13#10 +
             'Please select the correct Burglin'' Gnomes Demo installation folder.', 
             mbError, MB_OK);
      Result := False;
    end;
  end;
  
  // Download mods before installation
  if CurPageID = wpReady then
  begin
    DownloadPage.Clear;
    
    // Add downloads based on selected components
    if WizardIsComponentSelected('gnomes99') then
      DownloadPage.Add('{#GitHub99Gnomes}', '99Gnomes.dll', '');
    
    if WizardIsComponentSelected('betterlobbies') then
      DownloadPage.Add('{#GitHubBetterLobbies}', 'BetterLobbies.dll', '');
    
    if WizardIsComponentSelected('controllersupport') then
      DownloadPage.Add('{#GitHubController}', 'ControllerSupport.dll', '');
    
    if WizardIsComponentSelected('morehats') then
      DownloadPage.Add('{#GitHubMoreHats}', 'MoreHats.dll', '');
    
    if WizardIsComponentSelected('spawnmenu') then
      DownloadPage.Add('{#GitHubSpawnMenu}', 'SpawnMenu.dll', '');
    
    if WizardIsComponentSelected('thirdpersonview') then
      DownloadPage.Add('{#GitHubThirdPerson}', '3rdPersonView.dll', '');
    
    if WizardIsComponentSelected('doom') then
      begin
        DownloadPage.Add('{#GitHubDoom1}', 'DOOM1.WAD', '');
        DownloadPage.Add('{#GitHubDoom2}', 'ManagedDoomLib.dll', '');
        DownloadPage.Add('{#GitHubDoom3}', 'System.Buffers.dll', '');
        DownloadPage.Add('{#GitHubDoom4}', 'System.Memory.dll', '');
        DownloadPage.Add('{#GitHubDoom5}', 'System.Numerics.Vectors.dll', '');
        DownloadPage.Add('{#GitHubDoom6}', 'System.Runtime.CompilerServices.Unsafe.dll', '');
        DownloadPage.Add('{#GitHubDoom7}', 'doom_gnome.dll', '');
      end;

    // Download files
    DownloadPage.Show;
    try
      try
        DownloadPage.Download;
        Result := True;
      except
        if DownloadPage.AbortedByUser then
          ErrorMessage := 'Download cancelled by user.'
        else
          ErrorMessage := 'Download failed. Please check your internet connection and try again.';
        
        MsgBox(ErrorMessage, mbError, MB_OK);
        Result := False;
      end;
    finally
      DownloadPage.Hide;
    end;
  end;
end;

[Messages]
WelcomeLabel2=This will install BepInEx and Burglin' Gnomes mods on your computer.%n%nAll mods will be downloaded from GitHub (requires internet connection).%n%nYou can choose which mods to install.%n%nIt is recommended that you close {#GameName} before continuing.
SelectDirLabel3=Setup will install BepInEx 5 and your selected mods into the following folder.%n%nThis MUST be your {#GameName} installation folder.
SelectDirBrowseLabel=To continue, click Next. If the path below is incorrect, click Browse to select your game folder.
FinishedLabel=Installation complete!%n%nSelected mods have been installed. Launch {#GameName} to use them.
ConfirmUninstall=Are you sure you want to completely remove %1 and BepInEx?%n%nWARNING: This will remove BepInEx and may affect other mods.