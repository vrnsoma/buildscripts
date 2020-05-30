#THIS SCRIPT IS FOR HAVOC OS ONLY
#Please have the source initially synced at least once and have the Room serive from havoc branch
#Make sure to have dir abc and sub dirs crownlte star2lte and starlte and jsons

#working on rom sources
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

#regen face unlock
bash external/motorola/faceunlock/regenerate/regenerate.sh

#Building
. build/envsetup.sh 
brunch crownlte

echo "If the build fails run mka bacon -j2 then run 2.sh after it passes"
echo "If build doesn not fail run 2.sh"

