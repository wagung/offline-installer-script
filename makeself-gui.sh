#!/bin/bash
#wagungs = wagungs@gmail.com
input_file=`zenity --file-selection --title="Select location apps to convert" --directory`
	if [ $? -eq 1 ]; then
        	exit
    	fi
  
output_file=`zenity --file-selection --save --title="Save selfarcive file as..." --confirm-overwrite`
 
	if [ $? -eq 1 ]; then
		exit
	fi
 
makeself --nocomp --nowait $input_file/ $output_file.isi "$output_file" ./setup | zenity --text-info
exit
# end of script
#--nox11
