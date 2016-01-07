# cross-docker

This is a wrapper script to let you run different architecture containers with qemu-user

## Prerequisites

You must be running in an environment with a working `binfmt-misc` setup. On Debian, if you
install the `qemu-user-static` package that should be sufficient. On other systems make
sure that the `binfmt_misc` pseudo filesystem is mounted (and configured).

It is not possible to mount `binfmt-misc` from docker run, you cannot add it as a volume
mount for example. This wrapper avoids that by mounting it inside the container with a 
wrapper script, and some elevated permissions so it can do mount.

## How to use it

```
./cross-docker run arm -it armv7/armhf-ubuntu uname -a
Linux a6722bd5dabb 4.1.12 #1 SMP Mon Jan 4 11:26:42 UTC 2016 armv7l armv7l armv7l GNU/Linux
```

The first time you use it it will download the `qemu` binaries.

## Issues

The docker option parsing is a bit rubbish.

## Architectures

If your `binfmt-misc` is set up right the following architectures should be supported:

```
aarch64
alpha
arm
armeb
cris
i386
m68k
microblaze
microblazeel
mips
mips64
mips64el
mipsel
mipsn32
mipsn32el
or32
ppc
ppc64
ppc64abi32
ppc64le
s390x
sh4
sh4eb
sparc
sparc32plus
sparc64
unicore32
x86_64
``` 
