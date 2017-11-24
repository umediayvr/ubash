## ubash

### Installation

#### Add the lines below at the end of ~/.bashrc:
```bash
export UPIPE_ROOT="/data/studio/upipe"
export UPIPE_DEV_ROOT="$HOME/.umedia/upipe"
export UPIPE_PATH="$UPIPE_DEV_ROOT:$UPIPE_ROOT"
export UBASH_VERSION="stable"
source $UPIPE_ROOT/ubash/$UBASH_VERSION/env
source $UPIPE_ROOT/ubash/$UBASH_VERSION/init
```


#### Using/Testing ubash locally
You will need to create a symlink about release type pointing to the
version you want to use (simulating what happens under $UPIPE_ROOT/ubash), for instance
if the local version is installed under:
$UPIPE_DEV_ROOT/ubash/0.1.0

```bash
cd $UPIPE_DEV_ROOT/ubash
ln -s 0.1.0 stable
```

Finally, make sure your bash configuration is intializing ubash from that location:
```
export UPIPE_ROOT="/data/studio/upipe"
export UPIPE_DEV_ROOT="$HOME/.umedia/upipe"
export UPIPE_PATH="$UPIPE_DEV_ROOT:$UPIPE_ROOT"
export UBASH_ROOT="$UPIPE_DEV_ROOT/ubash"
export UBASH_VERSION="stable"
source $UBASH_ROOT/$UBASH_VERSION/env
source $UBASH_ROOT/$UBASH_VERSION/init
```
