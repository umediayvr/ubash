## ubash

### Config
Add the lines below at the end of `$HOME/.bashrc`:
```bash
# UPIPE:
export UPIPE_ROOT="/data/studio/upipe" # production release location
export UPIPE_DEV_ROOT="$HOME/.upipe" # development release location
export UPIPE_CORE_CONFIG="ucore-config/default" # "default" is an arbritary name for the config initialized by upipe
export UBASH_VERSION="stable" # release type (stable, beta and alpha)
source $UPIPE_ROOT/core/ubash/$UBASH_VERSION/env
source $UPIPE_ROOT/core/ubash/$UBASH_VERSION/init
```

### Overriding Versions
Overriding versions managed by ubash (USYS, UVER, ULAUNCHER and UEVENTS):
```bash
# ...
source $UPIPE_ROOT/core/ubash/$UBASH_VERSION/env
# it's done between 'env' and 'init'
export UVER_VESION="0.1.0"
export ULAUNCHER_VESION="0.1.0"
source $UPIPE_ROOT/core/ubash/$UBASH_VERSION/init
```

Overriding versions managed by uver:
```bash
# ...
source $UPIPE_ROOT/core/ubash/$UBASH_VERSION/init
# it's done after 'init'
export UVER_MAYATOOLS_VERSION="0.2.0"
```

### Activating the dev environment
In order to activate the dev env, so upipe can be aware about the resources
installed under "UPIPE_DEV_ROOT", you need to run:
```bash
devenv
```

### Using/Testing ubash locally
Install ubash locally:
```bash
# enter in dev environment:
devenv
# runu the installation:
./install
```

Make sure your upipe configuration is intializing ubash from UPIPE_DEV_ROOT:
```bash
# umedia (dev ubash)
export UPIPE_ROOT="/data/studio/upipe"
export UPIPE_DEV_ROOT="$HOME/.upipe"
export UBASH_VERSION="alpha"
source $UPIPE_DEV_ROOT/core/ubash/$UBASH_VERSION/env # <-
source $UPIPE_DEV_ROOT/core/ubash/$UBASH_VERSION/init # <-
```

### Building ubash for the first time
Make sure you have "jq" command installed, it can be download from:
https://stedolan.github.io/jq/download/

Also, ubash uses QBS for building/deployment, since this resource is provided by
ulauncher until you get ulauncher installed in your pipeline you will need to
have QBS available in your search path in order to run the installation:
```bash
export PATH="/path/to/qbs/bin:$PATH"
```

### Installing ubash
The instructions below are also applicable for all core & core-settings installs.

A) Deploying under the development area (only affects you):
```bash
./install
# the deployed version is only available under dev environment. Therefore, in case you want to activate it run:
devenv
```

B) Deploying under the production area (by default it only deploys the version data. This version is NOT linked to any release type. Since linking to release type can be done later):
```bash
./install --production
```

C) Deploying under the production area and making it available right away (means the version is going to be available for users having the UBASH_VERSION containing the release that is getting deployed):
```bash
# updates alpha beta and stable to point to the deployed version 
./install --production --update-all

# or updating only alpha to point to the deployed version (more details can be found under `./install --help`)
./install --production --update-alpha
```

