DLC Builder
~~~~~~~~~~~

Version: 4.0-beta2
Author:  Argent77


Overview
~~~~~~~~

Enhanced Edition games of version 2.0 or higher provide the feature of installing expansions in the form 
of DLCs. The best know example is the Siege of Dragonspear expansion which comes as a DLC package on GOG 
and Steam platforms. But this feature can be used for modding as well. 

This mod allows you turn your modded games into DLC archives. That way you don't have to go through the 
time-consuming and error-prone process of installing one mod after another if you simply want to reuse a 
known mod configuration. It can also be used to quickly synchronize multiple game installations so that 
they can be used for multiplayer sessions.


Installation
~~~~~~~~~~~~

This mod doesn't install anything on the system. Instead it simply creates a DLC file from the current 
modding configuration of the game. You can repeat the process as many times and at any time you want.

Simply start setup-DlcBuilder.exe (on Windows) or setup-DlcBuilder (on Mac OS X) and follow the instruction. 
When prompted enter the filename of the desired DLC.


Components
~~~~~~~~~~

This mod allows you to create the DLC in one of several locations supported by the game. The resulting 
filename of the DLC depending on the selected location.

1. Install the DLC in the "workshop" subfolder of the game's installation directory. This is the 
   recommended location as it is scanned last by the game and therefore reduces the chance that another 
   DLC may override one or more resources of this DLC. Supported file extension: ".mod".

2. Install the DLC in the "dlc" subfolder of the game's installation directory. This location is also 
   used by the Siege of Dragonspear DLC when you install it on Steam. Supported file extension: ".zip".

3. Install the DLC in the game's root folder. This location is used by the Siege of Dragonspear DLC when 
   you install it on GOG. Supported file extension: ".zip".

4. Install the DLC in the game's documents folder. This folder is recommended for systems which don't allow 
   to install files into the game's installation folder. Supported file extension: ".zip".

5. Activate expert mode which allows more control over the DLC building process.

The resulting DLC package can be easily installed on any clean game installation. Simply drop it into one of 
the supported DLC locations and you are done.

Important:
The game version of the target installation should match the version of the game where the DLC package has 
been created or you may encounter missing string references or outdated lines of text.

Notes:
This mod can only detect new or updated files in extra folders (such as movies, music or scripts) that have 
been added by the WeiDU installer of the mod. Files that have been added manually or by platform-dependent 
batch or shell scripts must be registered manually to the mod.
Create the folder "working" in "DlcBuilder" if it doesn't yet exist and create a simple text file with .txt 
extension (filename doesn't matter) where you list every file that has been installed in a non-standard way. 
The path to the file must be relative to the game's installation directory.

Example, assuming a mod installed "movies/mymovie.wbm" and "scripts/myscript.bs" to the game:
1. Create the file "mymod1.txt" in "DlcBuilder/working".
2. Add the following lines to the text file:
movies/mymovie.wbm
scripts/myscript.bs

For technical reasons the file size of DLC archives cannot exceed 2 GB. This mod will automatically create 
multiple DLC archives if needed to keep file size safely below 2 GB. Each additional archive uses a simple 
numeric suffix to the given file name. (Example: my-dlc.zip, my-dlc-01.zip, my-dlc-02.zip, ...)

The DLC creation process requires a lot of free space temporarily. You should make sure to have at least 
twice as much free space as the game resources to convert into a DLC, which includes biffed files and data 
in the override folder as well as various extra folders.

The DLC generation process may take a some time to complete, especially if many mod components are involved.


History
~~~~~~~

4.0
- Completely overhauled DLC creation process
- Added code to include mod-addded BIFF files into the DLCs
- Added support of check for extra folders in game's language directory
- Improved check for modified files in extra folders
- Added more file existence checks to prevent errors because of missing files
- Properly take care of engine.lua if it has been modified
- Updated 7zip binary to fix compatibility issues with macOS Sierra
- Removed centralfix binary since 7zip should already create compatible archives by itself
- Updated WeiDU binaries to v242

3.0
- Creates multiple DLC archives if needed to keep archive file size below 2 GB

2.3
- Removed a couple of checks because WeiDU fails to work correctly with files of over 1 GB size
- Added code to prevent WeiDU from creating unneeded backups of processed data on the harddisk

2.2
- Fixed: DLC building process could fail when dialog.tlk exceeded certain file size limit

2.1
- Added expert mode which provides more control over the DLC packaging process

2.0
- Modded files from extra folders (such as movies, music or scripts) are automatically added to the DLC archive

1.0
- Initial release
