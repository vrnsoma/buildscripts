#THIS SCRIPT IS FOR CrDroid ONLY

#intial setup
git clone https://github.com/akhilnarang/scripts
. scripts/setup/android_build_env.sh

#Get MEGA
sudo apt-get install ruby gem
sudo gem install rmega

#working on rom sources
mkdir cr
cd cr
repo init -u git://github.com/crdroidandroid/android.git -b 10.0
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

#working on device specific files
git clone https://github.com/vrnsoma/local_manifests .repo/local_manifests/
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

#Get OTA repo
git clone https://github.com/crdroidandroid/android_vendor_crDroidOTA -b 10.0

#Get faceunlock
git clone https://github.com/crdroidandroid/android_external_moto_faceunlock external/moto/faceunlock
. external/moto/faceunlock/regenerate/regenerate.sh

#Making Dirs for moving builds into
mkdir abc
cd abc
mkdir crownlte
mkdir star2lte
mkdir starlte
mkdir json
cd ..

#Building

. build/envsetup.sh

brunch crownlte
mv out/target/product/crownlte/crownlte.json abc/json
mv out/target/product/crownlte/crDroidAndroid-10.0-*.zip abc/crownlte
make installclean

brunch star2lte
mv out/target/product/star2lte/star2lte.json abc/json
mv out/target/product/star2lte/crDroidAndroid-10.0-*.zip abc/star2lte
make installclean

brunch starlte
mv out/target/product/starlte/starlte.json abc/json
mv out/target/product/starlte/crDroidAndroid-10.0-*.zip abc/starlte

#Upload to MEGA 
#Uploading 
cd abc/crownlte
rmega-up cr*.zip -u varunksoma@gmail.com
cd ..

cd star2lte
rmega-up cr*.zip -u varunksoma@gmail.com
cd ..

cd starlte
rmega-up cr*.zip -u varunksoma@gmail.com
cd .. && cd ..

#Get PART 2 of script
#HOW DO I DOWNLOAD A FILE FROM GITHUB VIA CMDLINE????



#Pushing OTA
#read -p "Would you like to push the OTA right now? (y/n)" final
#if 
#$final=y 
#. uploadcr.sh
#fi
#echo "Builds have been uploaded to MEGA and OTA has not been issued run second script to push ota"

