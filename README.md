## ubash

### Installation

#### 1 - Add the lines below at the end of ~/.bashrc:
```bash
export UPIPE_ROOT="/data/studio/upipe"
export UBASH_ROOT="$UPIPE_ROOT/ubash"
export UBASH_VERSION="stable"
source $UBASH_ROOT/$UBASH_VERSION/env
source $UBASH_ROOT/$UBASH_VERSION/init
```

#### 2 - Copy the auto-start scripts for kde/gnome (starts the umedia deamon):
```bash
mkdir -p ~/.config/autostart
cp $UCORE_ROOT/settings/defaultUserConfigs/autostart/*.desktop ~/.config/autostart/
```
