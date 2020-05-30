#Upload to MEGA 
cd abc/crownlte
rmega-up Havoc-OS*.zip -u varunksoma@gmail.com
cd ..

cd star2lte
rmega-up Havoc-OS*.zip -u varunksoma@gmail.com
cd ..

cd starlte
rmega-up Havoc-OS*.zip -u varunksoma@gmail.com

#Sourceforge upload
scp star2lte/Havoc-OS*.zip maintainers@frs.sourceforge.net:/home/pfs/project/havoc-os/star2lte

scp starlte/Havoc-OS*.zip maintainers@frs.sourceforge.net:/home/pfs/project/havoc-os/starlte

scp crownlte/Havoc-OS*.zip maintainers@frs.sourceforge.net:/home/pfs/project/havoc-os/crownlte

echo "Uploads completed, you can do your own shit now"

