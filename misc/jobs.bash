#!/bin/bash

proc=$(nproc)
mem=$(awk '$1~/^MemTotal:/{print $2}' /proc/meminfo)
mem=$((mem / 1024))

proc1=$((mem / 960))
if [[ $proc1 -gt $proc ]]; then proc1=$proc; fi
proc4=$((mem / 3840))
if [[ $proc4 -gt $proc ]]; then proc4=$proc; fi
proc8=$((mem / 7680))
if [[ $proc8 -gt $proc ]]; then proc8=$proc; fi

proc_samba=$proc
if [[ $proc_samba -gt 8 ]]; then proc_samba=8; fi

cat <<END
*/* build_options: jobs=$proc1
dev-lang/node build_options: jobs=$proc4
dev-libs/spidermonkey build_options: jobs=$proc4
net-fs/samba build_options: jobs=$proc_samba
net-libs/webkit build_options: jobs=$proc4
net-www/chromium-stable build_options: jobs=$proc4
net-www/firefox build_options: jobs=$proc4
x11-libs/qtwebengine:5 build_options: jobs=$proc8
END
