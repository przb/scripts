#!/bin/bash
# This is a very poorly document script that I used to mass unzip files into a folder with the appropriate name. 
# This probably already existed, but I could not find it easily
# This was ran on wsl
# Usage newFolders.sh  
cd /mnt/c/Users/prezb/Workspaces/School/ComS_192X/Trained_Models/BirdModels/
i=20;
while [ $i -le 80 ]
do
    cd 0$i*
    curDir=$(pwd)
    rmdir * 2>/dev/null
    for zipFile in $curDir/*.zip
    do
        echo $zipFile
        #="$(pwd)"
        dirName="$(echo "$zipFile" | cut -f 1 -d '.')";
        ##echo $dirName;
        mkdir $dirName
        ##echo $zipFile
        #
        unzip $zipFile -d $dirName/
    done
    cd ..
    ((i=i+20))
done
