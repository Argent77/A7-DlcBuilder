# DLC Builder
*Allows you to create independent DLC archives out of a modded Infinity Engine Enhanced Edition game.*

## Overview
Infinity Engine Enhanced Edition games since patch version 2.0 provide the feature of installing expansions in the form of DLCs. The best know example is the *Siege of Dragonspear* expansion which comes as a DLC package on GOG and Steam platforms. But this feature can be used for modding as well. 

This mod allows you turn your modded games into DLC archives. That way you don't have to go through the time-consuming and error-prone process of installing one mod after another if you simply want to reuse a known mod configuration. It can also be used to quickly synchronize multiple game installations so that they can be used for multiplayer sessions.

## Important note
BG2:EE at patch version 2.5.16.6 is currently broken and doesn't load DLC content. Other patch versions are not affected. On Windows you can fix this issue by using Bubb's DLC fixer. Download from here: https://forums.beamdog.com/discussion/comment/1124231/#Comment_1124231

In addition, since patch version 2.5 DLC archives must contain the string "dlc" (case-sensitive!) somewhere in their name to be recognized by the game. The mod automatically fixes the filename if needed.

## Components
This mod allows you to create the DLC in one of several locations supported by the game. The resulting filename of the DLC depending on the selected location.

1. Install the DLC in the "workshop" subfolder of the game's installation directory. This is the recommended location as it is scanned last by the game and therefore reduces the chance that another DLC may override one or more resources of this DLC. Supported file extension: ".mod".

2. Install the DLC in the "dlc" subfolder of the game's installation directory. This location is also used by the Siege of Dragonspear DLC when you install it on Steam. Supported file extension: ".zip".

3. Install the DLC in the game's root folder. This location is used by the Siege of Dragonspear DLC when you install it on GOG. Supported file extension: ".zip".

4. Install the DLC in the game's documents folder. This folder is recommended for systems which don't allow to install files into the game's installation folder. Supported file extension: ".zip".

5. Activate expert mode which allows more control over the DLC building process.
