# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.update-repos.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Go to GitHub repos
cd ~/Sites/GitHub;

for n in *; do
	cd "$n"

		if [ ! -d ".git" ]; then
			echo "`tput setaf 1`'$n' is not a git repository…`tput setaf 7`";
		else
			echo "`tput setaf 4`Updating" $n"…`tput setaf 7`" && git pull;
		fi

	cd ../
done

echo -e "`tput setaf 2`Done…All GitHub repos are up to date.\n `tput setaf 7`"

unset n


# Go to BB repos
cd ~/Sites/BuildingBlocks

# @todo Bail out if it’s not a directory.
for n in *; do
	cd "$n"

		if [ ! -d ".git" ]; then
			echo "`tput setaf 1`'$n' is not a git repository…`tput setaf 7`";
		else
			echo "`tput setaf 4`Updating" $n"…`tput setaf 7`" && git pull;
		fi

	cd ../
done

echo -e "`tput setaf 2`Done…All BB repos are up to date.\n `tput setaf 7`"

unset n
