**Copy over scripts**

To make a Nemo action global for all users, you must place the *.nemo_action file in the system-wide directory /usr/share/nemo/actions/ instead of the user-specific ~/.local/share/nemo/actions/

NOTE: if you wish to configure this non-globally and use the .local/share/nemo/actions directory then you will need to modify the bash files and nemo_action files to correct the file paths.


# Installation

copy files from "bash files" to /usr/local/bin/dvd-apps/dvd-bluray-icons/
make bash scripts executable if not already (rightclick->properties->permissions->execute in nemo or using chmod)
copy files from "actions" to /usr/share/nemo/actions/*
copy files from "icons" to /usr/share/icons/* ------ Note: I have not created any icons so there isn't any

close nemo windows and restart it in a terminal with
nemo --quit

then in Nemo go to EDIT->Preferences->Plugins->Edit Layout

Put the icons/commands in the correct order / add a submenu "Overlay DVD / Bluray icons" add separators etc. and put in order. e.g.

submenu->"Overlay DVD / Bluray icons"
Add DVD icon (white)
Add DVD icon (black)
Add DVD icon (green)
Add DVD icon (blue)
separator--------------
Add Bluray icon (blue)
Add Bluray icon (white)
Add Bluray icon (black)


To use right lick on the folder.jpg or posted.jpg and select required icon.

You can click on a big directory and search for folder.jpg the select all and rightclick->Add DVD icon (white) and it will do them all.

