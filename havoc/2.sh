#staging n9 files
mv out/target/product/crownlte/Havoc-OS*.zip abc/crownlte

#cleaning up
make installclean

#Starting next device
brunch star2lte

echo "If the build fails run mka bacon -j2 then run 3.sh after it passes"
echo "If build doesn not fail run 3.sh"
