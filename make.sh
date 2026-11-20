#!/bin/bash
if test -f rom.bin; then
	mv -f rom.bin rom.prev.bin
fi
Tools/Linux-x86/asl -xx -q -A -L -U -E -i . main.asm
Tools/Linux-x86/p2bin main.p rom.bin
rm -f main.p