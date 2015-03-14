# Update Repos

for dir in {BuildingBlocks,GitHub}; do
	cd ~/Sites/$dir

	for n in *; do
		if [ -d "$n" ]; then
			cd "$n"
			if [ ! -d ".git" ]; then
				echo "`tput setaf 1`'$n' is not a git repository…`tput setaf 7`"
			else
				echo "`tput setaf 4`Updating" $n"…`tput setaf 7`" && git pull
			fi
			cd ../
		fi
	done
	echo -e "`tput setaf 2`Done…All $dir repos are up to date.\n `tput setaf 7`"
	unset n
done
unset dir
