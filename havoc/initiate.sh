
#THIS SCRIPT IS FOR HAVOC OS ONLY
#This script is designed to be deployed anywhere, this just downloads rom

#intial setup
git clone https://github.com/akhilnarang/scripts
. scripts/setup/android_build_env.sh

#Get MEGA
sudo apt-get install ruby gem
sudo gem install rmega

#working on rom sources
mkdir havoc
cd havoc
repo init -u https://github.com/Havoc-OS/android_manifest.git -b ten
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

#working on device specific files
git clone https://github.com/vrnsoma/local_manifests -b havoc .repo/local_manifests/
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

#faceunlock
git clone https://github.com/Havoc-OS/android_external_motorola_faceunlock external/motorola/faceunlock
bash external/motorola/faceunlock/regenerate/regenerate.sh

#Making folders
mkdir abc
cd abc
mkdir crownlte
mkdir star2lte
mkdir starlte
mkdir jsons
cd ..

#clone scripts for building
git clone https://github.com/vrnsoma/buildscripts
#moving main script
cd ..
mv buildscript/havoc/all.sh havoc/
cd havoc

#running main script
. all.sh

