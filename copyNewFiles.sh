#!/bin/bash
# This is a very poorly document script that I used to get a given number of random files copied into a folder
# It is very ineffecient and was a bodge
# This was ran on wsl
#Usage: ./copyNewFiles.sh
workspace=/mnt/c/Users/prezb/Workspaces/School/ComS_192X/Bird_Dataset
project=$workspace/Train;
percent=20;
while [ $percent -le 80 ]
do
    i=1;
    while [ $i -le 6 ]
    do
        for dataset in $project/*
        do 
            mkdir "$dataset"/"$percent"_Perc_"$i"/ 2>/dev/null;
            filesInDirectory="$(ls "$dataset"/"$percent"_Perc_"$i"/ | wc -l)";
            while [ $filesInDirectory -lt $percent ]
            do 
                num=$(($RANDOM % 100 + 1));
                num="$(printf "%03d" $num)";
                #echo $filesInDirectory comparison $percent
                cp "$dataset"/$num* "$dataset"/"$percent"_Perc_"$i"/ ;
                filesInDirectory="$(ls "$dataset"/"$percent"_Perc_"$i"/ | wc -l)";
            done
            echo "made "$percent"_Perc_"$i"/";


        done
        ((i++))
    done
    ((percent=percent+20))
done
