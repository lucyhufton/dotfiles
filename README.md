# dotfiles

> Set up a new Mac super quick!

## Install these files
```sh
cd; curl -#L https://github.com/furzeface/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude=README.md
```

#### Set sensible OSX defaults
```sh
bash .osx.sh
```

#### Install [Homebrew](http://brew.sh) then use it to install [Git](http://git-scm.com), [Node](http://nodejs.org) and [Brew Cask](http://caskroom.io)
```sh
bash .brew.sh
```

#### Install apps with [Brew Cask](http://caskroom.io)
```sh
bash .cask.sh
```
Installs core productivity apps, dev tools, browsers, helper apps.

#### Install global Node modules with [NPM](https://www.npmjs.org)
```sh
bash .npm.sh
```
Installs [Bower](http://bower.io), [Grunt](http://gruntjs.com) and [Yeoman](http://yeoman.io) globally.

#### Create standard set of directories
```sh
bash .mkdir.sh
```

#### Clone some GitHub repositories
```sh
bash .gitrepos.sh
```

#### Finally, set some sensible defaults for the installed apps
```sh
bash .init.sh
```
