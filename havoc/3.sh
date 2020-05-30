#staging s9+ files
mv out/target/product/star2lte/Havoc-OS*.zip abc/star2lte

#cleaning up
make installclean

#removing n9 dirs
rm -rf out/target/product/crownlte

#startind s9
brunch starlte

echo "If the build fails run mka bacon -j2 then run 4.sh after it passes"
echo "If build doesn not fail run 4.sh"
