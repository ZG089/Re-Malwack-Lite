##########################################################################################
#
# MMT Extended Config Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maximum android version for your mod
# Uncomment DYNLIB if you want libs installed to vendor for oreo+ and system for anything older
# Uncomment DEBUG if you want full debug logs (saved to /sdcard)
#MINAPI=21
#MAXAPI=25
#DYNLIB=true
#DEBUG=true

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
/system/etc/hosts
/system/etc/hosts.tmp
"


##########################################################################################
# MMT Extended Logic - Don't modify anything after this
##########################################################################################

# ok.
DO_WE_HAVE_ANYTHING_TO_EXTRACT=true
DO_WE_REALLY_NEED_ADDONS=false

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
unzip -qjo "$ZIPFILE" 'common/install.sh' -d $TMPDIR >&2
source $TMPDIR/functions.sh
. $TMPDIR/install.sh
