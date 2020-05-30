CONGRATS YOU ARE TRYING TO BUILD HAVOC FOR EXYNOS9180
THIS SCRIPT CAN BE USED TO BUILD FOR OTHER DEVICES AND REQUIRES SOME MODIFICATIONS, IF YOU CAME THIS FAR THEN I THINK YOU KNOW WHAT TO DO

This folder contains all the scripts required to build havoc in two cases 
  -server
  -local machine
  
  If you are trying to build on server copy the initiate script to your server and chmod +x it and start it everything should be done automatically
  
  If you are trying to build on local machine and have the sources synced already (if you want faceunlock make sure you already have it in place) then clone this repo into your havoc source folder and move all.sh from buildscripts/havoc to your havoc source repo, after running all.sh it should build with faceunlock automatically.
  
If you dont have faceunlock permissions then remove the faceunlock parts from the scripts!
