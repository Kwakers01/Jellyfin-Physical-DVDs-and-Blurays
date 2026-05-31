# How to add physical media to your Jellyfin Library.

1) Download the required directory e.g. DVD or Bluray
2) Copy the directory to your Librarys media directory structure.
3) Rename the directory e.g.
   
"NAME HERE (YEAR) - DVD" to "About a Boy (2002) - DVD" or "About a Boy (2002)" if you don't want DVD on the end.

4) Scan the library and you should get the About a Boy folder.

When you click play, the file will show a 1 second clip with "On DVD" on the screen.

>[!NOTE]
>The same clip is played in the Bluray directory i.e. "On DVD". Unfortuately I created the clip a long time ago and I'm not fussed about it saying On Bluray, just that I know that the movie is in my DVD collection.

## Reports 
(you may need to load the plugin called Reports)

If you use the reporting tool Dashborad->Reports->Click on the 3 dots next to Mediatype->Filter->Video Type-> BD or DVD should now work and list just your BD or DVD etc. after selecting and pressing View.

## How I created this for Blu-ray

I used Xmedia Recoder to copy the DTS audio from another media file and set the required encoding and video size for the video clip I used 1920x1080_x264_HEVC_DTS_5.1 and created a .m2ts file.
I then used tsMuxer (windows version) to create the BDMV directory files (BIG THANKS to the tsMuxer team).

# Adding DVD / Blu-ray Icons to Posters

## Requirements

* Bash needs to be installed on the system (cmd$ bash --version.)
* Jellyfin Server needs to be installed on the system (cmd$ jellyfin --version)
* You DO NOT need root access (sudo) to install and run this application.

## How to add icons to the poster.jpg and folder.jpg using the NEMO file manager (on Linux Mint)

If you wish I have also written a few bash script files to allow you to easily add a DVD or Bluray icon to the top left of the posters.

See the "Overlay DVD and Bluray Icons for Jellyfin" directory for info (this was quickly put together and roughly documented - sorry).

>[!TIP]
>Under your admin setting, ensure that you have set up the Jellyfin library (in Libraries->click 3 dots->Manage Library) to "Save artwork into media folder" and "Metadata Savers - Nfo" are selected (I did this from something I read, I am not sure if the nfo bit is actually needed).

>Once you have set up the bash scripts and Nemo, you can then use Nemo to find the folder.jpg or poster.jpg in the media folder and in nemo right click the folder and select the required icon.  If you have a larger library of DVD's you can search the main folder using Nemo for folder.jpg or poster.jpg, slect all and right click and pick your icon.

>[!NOTE]
>KNOWN ISSUE : If you change the poster image using Jellyfin's "Edit Image" thus downloading a new poster from the web, you will need to go into the media folder and delete the *.jpg-orig file BEFORE downloading.  Otherwise when you try to add the DVD/DB icon back to the new image the bash script will re-read the old *.jpg-orig poster file and put the old poster image back into the library (I spent an hour wondering why jellyfin kept re-downloading the default poster when it wasn't).
>
>Quick Info : Delete the files **folder.jpg/poster.jpg** and **folder.jpg-orig/folder.jpg-orig** before you download a new poster uing Jellyfin's "Edit Image".



