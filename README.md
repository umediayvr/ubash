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
