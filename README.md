# How to add physical media to your Jellyfin Library.

1) Download the required directory e.g. DVD or Bluray
2) Copy the directory to your Librarys directory structure.
3) Rename the directory e.g.
   
"NAME HERE (YEAR) - DVD" to "About a Boy (2002) - DVD" or "About a Boy (2002)" if you don't want DVD on the end.

4) Scan the library and you should get the About a Boy folder.

When you click play, the file will show a 1 second clip with "On DVD" on the screen.

Note: The same clip is played in the Bluray directory i.e. "On DVD". Unfortuately I created the clip a long time ago and I'm not fussed about it saying On Bluray, just that I know that the movie is in my DVD collection.

# Reports 
(you may need to load the plugin called Reports)

If you use the reporting tool Dashborad->Reports->Click on the 3 dots next to Mediatype->Filter->Video Type-> BD or DVD should now work and list just your BD or DVD etc. after selecting and pressing View.


# How I created this for Bluray

I used Xmedia Recoder to copy the DTS audio from another media file and set the required encoding and video size for the video clip I used 1920x1080_x264_HEVC_DTS_5.1 and created a .m2ts file.
I then used tsMuxer (windows version) to create the BDMV directory files (BIG THANKS to the tsMuxer team).

# Adding Icons to the poster.jpg and folder.jpg using the NEMO file manager (on Linux Mint)

If you wish I have also written a few bash files to allow you to easily add a DVD or Bluray icon to the top left of the posters.

See the "Overlay DVD and Bluray Icons for Jellyfin" directory for info (this was quickly put together and roughly documented - sorry).
