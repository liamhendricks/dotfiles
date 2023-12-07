#!/bin/bash

# general purpose archive extractor (originally stole it from arch wiki i think)
# usage - ex <file>
ex ()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2) tar xjf $1 ;;
			*.tar.gz)  tar xzf $1 ;;
			*.bz2)     bunzip2 $1 ;;
			*.rar)     unrar x $1 ;;
			*.gz)      gunzip $1  ;;
			*.tar)     tar xf $1  ;;
			*.zip)     unzip $1   ;;
			*.7z)      7z x $1    ;;
			*)         echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# find by file type
# usage - fbft <dir> <file type> (ex: fbft . png)
fbft ()
{
	find $1 -name "*.$2" -print
}

# find and replace in directory
# usage - freplace <find string> <replace string>
freplace()
{
    find . \( ! -regex '.*/\..*' \) -type f | LC_ALL=C xargs sed -i '' "s/$1/$2/g"
}

# generate a sha256 sum of provided string
# usage - sha256 <some string>
sha256()
{
    echo -n "$1" | shasum -a 256
}

# show open ports
openports()
{
    lsof -i -P | grep -i "listen"
}
