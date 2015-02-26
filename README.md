Copyright 2014 - The CyanogenMod Project
===================================

Device configuration for Samsung Galaxy V SM-G313HZ (vivalto)

                       instruction how to build

I think you already set up build enviroment so I will skip this.
First go to your working dir/build/tools/device and open in gedit makerecoveries.sh
Find line 
        make -j16 recoveryzip
and replace it with
        make recoveryzip
beacause it wont eat your RAM and build will be faster


After you finshed repo sync go in your working dir/device/
and create folder /samsung/vivalto3gvndx and copy content of vivalto3gvndx
that you downloaded from here.

For build recovery, run this command in terminal from your working dir 

        . build/envsetup.sh
        lunch cm_vivalto3gvndx-userdebug && make recoveryimage

Your build will start and you will find your recovery.img in your working dir/out/target/product/vivalto3gvndx

To make it flashable via ODIN you have to make it recovery.tar.md5
Navigate with terminal where you save your recovey.img .
For example cd android/out/target/product/vivalto3gvndx
where android is name of your working dir
and run command:

        tar -H ustar -c recovery.img > recovery.tar
        md5sum -t recovery.tar >> recovery.tar
        mv recovery.tar recovery.tar.md5
        
An now you got recovery.tar.md5 ready to be flashed usin ODIN selected as PDA file

And for build rom, run this command in terminal from your working dir 

        . build/envsetup.sh && brunch vivalto3gvndx

But, the file rom still bootloop. here the logcat http://pastebin.com/iXswU6vh .
If you know how to fix it, i would be very happy if you would help.

Good luck and Happy building. (^_^)/



To apply patches 
for example:  audio.patch
 got to frameworks/av  copy the patch in that directory and open 
terminal and run command 
where 1st command is to apply patch and 
the 2nd for to revert the patches which applied earlier

                      patch -p1 < audio.patch
                      patch -R -p1 <audio.patch  

