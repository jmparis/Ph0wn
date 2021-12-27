# How to reverse an .APK

1. Make a new folder and copy over the [.apk](https://fr.wikipedia.org/wiki/APK_(format_de_fichier)) file that you want to decode.
2. Now rename the extension of this .apk file to .zip (e.g. rename from filename.apk to filename.zip) and save it. Now you can access the classes.dex files, etc. At this stage you are able to see drawables but not xml and java files, so continue.
3. Now extract this .zip file in the same folder (or NEW FOLDER).
4. Download dex2jar and extract it to the same folder (or NEW FOLDER).
5. Move the classes.dex file into the dex2jar folder.
6. Now open command prompt and change directory to that folder (or NEW FOLDER). Then write d2j-dex2jar classes.dex (for mac terminal or ubuntu write ./d2j-dex2jar.sh
  classes.dex) and press enter. You now have the classes.dex.dex2jar file in the same folder.
7. Download java decompiler, double click on jd-gui, click on open file, and open classes.dex.dex2jar file from that folder: now you get class files.
8. Save all of these class files (In jd-gui, click File -> Save All Sources) by src name. At this stage you get the java source but the .xml files  are still unreadable, so continue.
9. Now open another new folder.
10. Put in the .apk file which you want to decode.
11. Download the latest version of apktool AND apktool install window (both can be  downloaded from the same link) and place them in the same folder.
12. Open a command window.
13. Now run command like apktool if framework-res.apk and next.
14. apktool d myApp.apk (where myApp.apk denotes the filename that you want to decode).
15. now you get a file folder in that folder and can easily read the apk's xml files.
16. It's not any step just copy contents of both folder(in this case both new folder)to the single one.