#Push to OTA repo
cd cr
cd android_vendor_crDroidOTA

git reset --hard
git fetch --all
git pull

rm -rf crownlte.json
rm -rf star2lte.json
rm -rf starlte.json

cd ..

mv abc/json/* android_vendor_crDroidOTA/
echo "JSONS ARE IN PLACE!!!"


#Uploading 
cd abc/crownlte
curl --ssl -k -T cr*.zip ftp://upme.crdroid.net/files/crownlte/6.x/ --user uploader:pswd
cd ..
echo "NOTE 9 FINSIHED"

cd star2lte
curl --ssl -k -T cr*.zip ftp://upme.crdroid.net/files/star2lte/6.x/ --user uploader:pswd
cd ..
echo "S9+ FINSIHED"

cd starlte
curl --ssl -k -T cr*.zip ftp://upme.crdroid.net/files/starlte/6.x/ --user uploader:pswd
echo "S9 FINSIHED"

cd .. && cd ..

cd android_vendor_crDroidOTA/

echo "UPLOADS HAVE COMPLETED ---> ADD CHANGELOGS AND PUSH FOR OTA"

