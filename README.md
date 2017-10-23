## ubash

### Installation

#### Add the lines below at the end of ~/.bashrc:
```bash
export UPIPE_ROOT="$HOME/dev/umedia"
export UPIPE_DEV_ROOT="$HOME/.umedia/upipe"
export UPIPE_PATH="$UPIPE_DEV_ROOT:$UPIPE_ROOT"
export UBASH_ROOT="/data/studio/ubash"
export UBASH_VERSION="stable"
source $UBASH_ROOT/$UBASH_VERSION/env
source $UBASH_ROOT/$UBASH_VERSION/init
```
