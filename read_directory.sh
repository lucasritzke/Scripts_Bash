#!/bin/bash 

echo "Which directory do you want verify"
read dire

if ! [ -d $dire ]; then
	echo -e "This directoey does not exist\nRestarting this application"
	sleep 2
	exec /home/lritzke/bin/read_directory.sh
fi

arcdir=()
while IFS= read -r entry; do
	file="${entry%%:*}"
	permissions=$(stat -c "%A" "$dire/$file")
	echo -e "$file $permissions"
done < <(find "$dire" -maxdepth 1 ! -name "bin" -printf "%f:\n")


