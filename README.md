## ubash

### Config
Add the lines below at the end of `$HOME/.bashrc`:
```bash
# umedia
export UPIPE_ROOT="/data/studio/upipe"
export UPIPE_DEV_ROOT_TARGET="$HOME/.umedia/upipe"
export UPIPE_PATH="$UPIPE_DEV_ROOT:$UPIPE_ROOT"
export UBASH_VERSION="stable"
source $UPIPE_ROOT/ubash/$UBASH_VERSION/env
source $UPIPE_ROOT/ubash/$UBASH_VERSION/init
```

### Activating the dev environment
In order to activate the dev env, so upipe can be aware about the resources
installed under "UPIPE_DEV_ROOT_TARGET", you need to run:
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

You will need to create a symlink about release type pointing to the
version you want to use (simulating what happens under $UPIPE_ROOT/ubash), for instance
if the local version is installed under:
```bash
$UPIPE_DEV_ROOT/ubash/0.1.0
```

Make a symlink about the release type (stable, beta, alpha) for that version:
```bash
cd $UPIPE_DEV_ROOT/ubash
rm alpha # in case there is already a symlink for alpha in place
ln -s 0.1.0 alpha
```

Finally, make sure your upipe configuration is intializing ubash from that location:
```bash
# umedia (dev ubash)
export UPIPE_ROOT="/data/studio/upipe"
export UPIPE_DEV_ROOT_TARGET="$HOME/.umedia/upipe"
export UPIPE_PATH="$UPIPE_DEV_ROOT:$UPIPE_ROOT"
export UBASH_VERSION="alpha" # <-
source $UPIPE_DEV_ROOT_TARGET/ubash/$UBASH_VERSION/env # <-
source $UPIPE_DEV_ROOT_TARGET/ubash/$UBASH_VERSION/init # <-
```

### Building ubash for the first time
UBash uses QBS for building/deployment, since this resource is provided by
ulauncher until you get ulauncher installed in your pipeline you will need to
have QBS available in your search path in order to run the installation:
```bash
export PATH="/path/to/qbs/bin:$PATH"
devenv
./install
# or
./install production
```
