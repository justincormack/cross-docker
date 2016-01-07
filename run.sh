#!/bin/sh

mount binfmt_misc -t binfmt_misc -o ro /proc/sys/fs/binfmt_misc || (printf "unable to mount binfmt misc fs" && exit 1)

exec $*
