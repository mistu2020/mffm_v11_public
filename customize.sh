## MFFM Installer v11 by MFFM
## 2022/08/07
set -xv

SH=$MODPATH/customize.sh
tail -n +$((`grep -an ^PAYLOAD:$ $SH | cut -d : -f 1`+1)) $SH | tar xJf - -C $MODPATH

. $MODPATH/install.sh

return
PAYLOAD:
