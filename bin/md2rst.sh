#!/bin/bash

#script for converting md files to rst files
#but becareful it also converts README.md file and maybe delete it ;-)
#first install pandoc
#sudo apt-get install pandoc
for file in $(find . -iname '*.md')
	do 
	filepath="${file%/*}"
	filename=$(basename "$file")
	extension="${filename##*.}"
	filenameonly="${filename%.*}"
	echo "Converting $filename to $filenameonly.rst" 
	pandoc $file --from=markdown_github --to=rst -o $filepath/$filenameonly.rst
	#uncomment this line to delete the source file.
	#rm $file  
done

